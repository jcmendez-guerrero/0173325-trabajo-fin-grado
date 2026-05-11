#!/usr/bin/env bash
# Script generado parcialmente con la ayuda de Anthropic(2026)
# create-accounts.sh
# Crea cuentas AWS, las asocia a sus OUs y las registra en Control Tower.
# Requiere: aws cli v2, permisos de management account, Control Tower ya desplegado.
#
# USO:
#   export EMAIL_DOMAIN="wizardsofthecoast.com"
#   export CT_HOME_REGION="eu-south-2"
#   bash create-accounts.sh \
#     --account "name=aws-acc-app-wom-dev-01,ou=ou-nonprod-lz" \
#     --account "name=aws-acc-app-wom-prod-01,ou=ou-prod-lz,email=prod@wizardsofthecoast.com"

set -euo pipefail

# ─── Configuración ───────────────────────────────────────────────────────────
EMAIL_DOMAIN="${EMAIL_DOMAIN:-wizardsofthecoast.com}"
CT_HOME_REGION="${CT_HOME_REGION:-eu-south-2}"
ACCOUNT_WAIT_SECONDS=30
MAX_RETRIES=40  # 20 minutos máximo por cuenta

declare -a ACCOUNT_NAMES=()
declare -a ACCOUNT_OU_REFS=()
declare -a ACCOUNT_EMAILS=()

# ─── Colores ──────────────────────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'
log()  { echo -e "${GREEN}[+]${NC} $*"; }
warn() { echo -e "${YELLOW}[!]${NC} $*"; }
err()  { echo -e "${RED}[✗]${NC} $*" >&2; }

usage() {
    cat <<'EOF'
Uso:
  create-accounts.sh --account "name=<nombre>,ou=<ou|ou-id>[,email=<correo>]" [opciones]

Opciones:
  --account <spec>         Repetible. Define una cuenta a crear/gestionar.
  --email-domain <dominio> Dominio para emails por defecto (fallback).
  --ct-home-region <region> Región Home de Control Tower.
  -h, --help               Muestra esta ayuda.

Ejemplos:
  create-accounts.sh \
    --account "name=aws-acc-app-wom-dev-01,ou=ou-nonprod-lz" \
    --account "name=aws-acc-app-wom-prod-01,ou=ou-prod-lz,email=prod@empresa.com"

Notas:
  - Si no se informa email en una cuenta, se usa: <name>@EMAIL_DOMAIN
  - ou puede ser nombre (ej: ou-prod-lz) o ID (ej: ou-abcd-12345678)
EOF
}

# ─── Helpers ──────────────────────────────────────────────────────────────────

trim() {
    local input="$1"
    input="${input#"${input%%[![:space:]]*}"}"
    input="${input%"${input##*[![:space:]]}"}"
    printf '%s' "$input"
}

is_valid_email() {
    local email="$1"
    [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]
}

parse_account_spec() {
    local spec="$1"
    local name=""
    local ou=""
    local email=""
    local pair key value

    IFS=',' read -r -a pairs <<< "$spec"

    for pair in "${pairs[@]}"; do
        pair="$(trim "$pair")"
        key="${pair%%=*}"
        value="${pair#*=}"
        key="$(trim "$key")"
        value="$(trim "$value")"

        if [ -z "$key" ] || [ "$pair" = "$key" ]; then
            err "Par inválido en --account: '$pair'"
            return 1
        fi

        case "$key" in
            name) name="$value" ;;
            ou) ou="$value" ;;
            email) email="$value" ;;
            *)
                err "Clave no soportada en --account: '$key'"
                return 1
                ;;
        esac
    done

    if [ -z "$name" ]; then
        err "Falta 'name' en --account: $spec"
        return 1
    fi

    if [ -z "$ou" ]; then
        err "Falta 'ou' en --account: $spec"
        return 1
    fi

    ACCOUNT_NAMES+=("$name")
    ACCOUNT_OU_REFS+=("$ou")
    ACCOUNT_EMAILS+=("$email")
}

parse_args() {
    while [ $# -gt 0 ]; do
        case "$1" in
            --account)
                [ $# -lt 2 ] && { err "--account requiere un valor"; usage; exit 1; }
                parse_account_spec "$2"
                shift 2
                ;;
            --email-domain)
                [ $# -lt 2 ] && { err "--email-domain requiere un valor"; usage; exit 1; }
                EMAIL_DOMAIN="$2"
                shift 2
                ;;
            --ct-home-region)
                [ $# -lt 2 ] && { err "--ct-home-region requiere un valor"; usage; exit 1; }
                CT_HOME_REGION="$2"
                shift 2
                ;;
            -h|--help)
                usage
                exit 0
                ;;
            *)
                err "Opción no reconocida: $1"
                usage
                exit 1
                ;;
        esac
    done
}

get_direct_child_ou_ids() {
    local parent_id="$1"
    aws organizations list-children \
        --parent-id "$parent_id" \
        --child-type ORGANIZATIONAL_UNIT \
        --query 'Children[*].Id' \
        --output text | tr '\t' '\n'
}

find_ou_id_recursive() {
    local parent_id="$1"
    local target_ou_name="$2"
    local child_id=""
    local child_name=""
    local nested_found=""

    while read -r child_id; do
        [ -z "$child_id" ] && continue

        child_name=$(aws organizations describe-organizational-unit \
            --organizational-unit-id "$child_id" \
            --query 'OrganizationalUnit.Name' --output text)

        if [ "$child_name" = "$target_ou_name" ]; then
            echo "$child_id"
            return 0
        fi

        if nested_found=$(find_ou_id_recursive "$child_id" "$target_ou_name"); then
            echo "$nested_found"
            return 0
        fi
    done < <(get_direct_child_ou_ids "$parent_id")

    return 1
}

resolve_ou_id() {
    local root_id="$1"
    local ou_name="$2"

    find_ou_id_recursive "$root_id" "$ou_name"
}

validate_accounts() {
    local total="${#ACCOUNT_NAMES[@]}"
    local i account_name account_ou account_email effective_email
    declare -A seen_names=()
    declare -A seen_emails=()

    if [ "$total" -eq 0 ]; then
        err "Debes informar al menos un --account"
        usage
        return 1
    fi

    for ((i=0; i<total; i++)); do
        account_name="${ACCOUNT_NAMES[$i]}"
        account_ou="${ACCOUNT_OU_REFS[$i]}"
        account_email="${ACCOUNT_EMAILS[$i]}"

        if [ -z "$account_name" ] || [ -z "$account_ou" ]; then
            err "Cuenta inválida en posición $((i+1))"
            return 1
        fi

        if [ -n "${seen_names[$account_name]:-}" ]; then
            err "Nombre de cuenta duplicado: $account_name"
            return 1
        fi
        seen_names["$account_name"]=1

        effective_email="$account_email"
        if [ -z "$effective_email" ]; then
            effective_email="${account_name}@${EMAIL_DOMAIN}"
        fi

        if ! is_valid_email "$effective_email"; then
            err "Email inválido para '$account_name': $effective_email"
            return 1
        fi

        if [ -n "${seen_emails[$effective_email]:-}" ]; then
            err "Email duplicado entre cuentas: $effective_email"
            return 1
        fi
        seen_emails["$effective_email"]=1
    done
}

# Devuelve el ID de una OU buscando por nombre desde un padre dado
get_ou_id_by_name() {
    local parent_id="$1"
    local ou_name="$2"

    aws organizations list-children \
        --parent-id "$parent_id" \
        --child-type ORGANIZATIONAL_UNIT \
        --query 'Children[*].Id' \
        --output text | tr '\t' '\n' | while read -r id; do
        name=$(aws organizations describe-organizational-unit \
            --organizational-unit-id "$id" \
            --query 'OrganizationalUnit.Name' --output text)
        if [ "$name" = "$ou_name" ]; then
            echo "$id"
            return
        fi
    done
}

# Espera a que una creación de cuenta termine y devuelve el Account ID
wait_for_account() {
    local request_id="$1"
    local retries=0

    while [ $retries -lt $MAX_RETRIES ]; do
        STATUS=$(aws organizations describe-create-account-status \
            --create-account-request-id "$request_id" \
            --query 'CreateAccountStatus.State' --output text)

        if [ "$STATUS" = "SUCCEEDED" ]; then
            aws organizations describe-create-account-status \
                --create-account-request-id "$request_id" \
                --query 'CreateAccountStatus.AccountId' --output text
            return 0
        elif [ "$STATUS" = "FAILED" ]; then
            REASON=$(aws organizations describe-create-account-status \
                --create-account-request-id "$request_id" \
                --query 'CreateAccountStatus.FailureReason' --output text)
            err "Creación de cuenta fallida: $REASON"
            return 1
        fi

        warn "Estado: $STATUS — esperando ${ACCOUNT_WAIT_SECONDS}s... ($((retries+1))/$MAX_RETRIES)"
        sleep "$ACCOUNT_WAIT_SECONDS"
        ((retries++))
    done

    err "Timeout esperando la cuenta"
    return 1
}

# Crea una cuenta si no existe ya, la devuelve a la OU indicada y la registra en CT
create_and_enroll() {
    local account_name="$1"
    local email="$2"
    local target_ou_id="$3"

    # Verificar si la cuenta ya existe
    EXISTING=$(aws organizations list-accounts \
        --query "Accounts[?Name=='${account_name}'].Id" \
        --output text)

    if [ -n "$EXISTING" ]; then
        warn "Cuenta '$account_name' ya existe ($EXISTING) — verificando OU..."
        ACCOUNT_ID="$EXISTING"
    else
        log "Creando cuenta: $account_name ($email)"
        REQUEST_ID=$(aws organizations create-account \
            --email "$email" \
            --account-name "$account_name" \
            --iam-user-access-to-billing ALLOW \
            --query 'CreateAccountStatus.Id' --output text)

        ACCOUNT_ID=$(wait_for_account "$REQUEST_ID")
        log "Cuenta creada: $ACCOUNT_ID"
    fi

    # Mover a la OU correcta si no está ya ahí
    CURRENT_PARENT=$(aws organizations list-parents \
        --child-id "$ACCOUNT_ID" \
        --query 'Parents[0].Id' --output text)

    if [ "$CURRENT_PARENT" != "$target_ou_id" ]; then
        log "Moviendo $account_name de $CURRENT_PARENT a $target_ou_id"
        aws organizations move-account \
            --account-id "$ACCOUNT_ID" \
            --source-parent-id "$CURRENT_PARENT" \
            --destination-parent-id "$target_ou_id"
    else
        warn "$account_name ya está en la OU correcta"
    fi

    # Registrar en Control Tower (Enroll Account)
    log "Registrando $account_name en Control Tower..."
    ENROLLMENT=$(aws controltower list-enabled-controls \
        --target-identifier "arn:aws:organizations::$(aws sts get-caller-identity \
            --query Account --output text):account/$ACCOUNT_ID" \
        --region "$CT_HOME_REGION" 2>/dev/null | wc -l || echo "0")

    if [ "$ENROLLMENT" -gt 2 ]; then
        warn "$account_name ya está enrolada en Control Tower"
    else
        aws controltower create-managed-account \
            --account-id "$ACCOUNT_ID" \
            --organizational-unit-id "$target_ou_id" \
            --region "$CT_HOME_REGION" 2>/dev/null \
            || warn "No se pudo auto-enroll (puede requerir Account Factory). Mueve la cuenta a la OU y CT la registrará."
    fi

    echo "$ACCOUNT_ID"
}

# ─── Main ─────────────────────────────────────────────────────────────────────
main() {
    local total i account_name account_ou_ref account_email account_effective_email account_ou_id
    declare -A resolved_ou_ids=()

    parse_args "$@"
    validate_accounts

    log "Obteniendo Root ID..."
    ROOT_ID=$(aws organizations list-roots --query 'Roots[0].Id' --output text)
    log "Root: $ROOT_ID"

    total="${#ACCOUNT_NAMES[@]}"

    log "Resolviendo OUs solicitadas..."
    for ((i=0; i<total; i++)); do
        account_ou_ref="${ACCOUNT_OU_REFS[$i]}"
        if [ -n "${resolved_ou_ids[$account_ou_ref]:-}" ]; then
            continue
        fi

        if account_ou_id=$(resolve_ou_id "$ROOT_ID" "$account_ou_ref"); then
            resolved_ou_ids["$account_ou_ref"]="$account_ou_id"
            log "OU '$account_ou_ref' -> ${resolved_ou_ids[$account_ou_ref]}"
        else
            err "No se pudo resolver la OU '$account_ou_ref'"
            return 1
        fi
    done

    echo ""
    log "Plan de ejecución (${total} cuentas):"
    for ((i=0; i<total; i++)); do
        account_name="${ACCOUNT_NAMES[$i]}"
        account_ou_ref="${ACCOUNT_OU_REFS[$i]}"
        account_email="${ACCOUNT_EMAILS[$i]}"
        account_effective_email="$account_email"
        if [ -z "$account_effective_email" ]; then
            account_effective_email="${account_name}@${EMAIL_DOMAIN}"
        fi
        log "[$((i+1))/$total] $account_name | ou=${resolved_ou_ids[$account_ou_ref]} | email=$account_effective_email"
    done

    echo ""
    log "Iniciando creación/asignación/enrollment..."
    for ((i=0; i<total; i++)); do
        account_name="${ACCOUNT_NAMES[$i]}"
        account_ou_ref="${ACCOUNT_OU_REFS[$i]}"
        account_email="${ACCOUNT_EMAILS[$i]}"
        account_effective_email="$account_email"
        if [ -z "$account_effective_email" ]; then
            account_effective_email="${account_name}@${EMAIL_DOMAIN}"
        fi

        account_ou_id="${resolved_ou_ids[$account_ou_ref]}"
        echo ""
        log "═══ Cuenta $((i+1))/$total: $account_name ═══"
        create_and_enroll "$account_name" "$account_effective_email" "$account_ou_id"
    done

    echo ""
    log "✓ Proceso completado."
    log "Recuerda verificar en Control Tower > Account Factory que todas las cuentas estén enrolladas."
}

main "$@"
