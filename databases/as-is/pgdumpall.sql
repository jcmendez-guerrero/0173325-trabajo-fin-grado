--
-- PostgreSQL database cluster dump
--

\restrict vmGDWzPhqEF2tEFw0uar4fvTiDC5KywaeML9pzxMzjQ6k4fJ4g5f9KMdcJxz0FB

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE backup_operator;
ALTER ROLE backup_operator WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE readonly_audit;
ALTER ROLE readonly_audit WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE repmgr;
ALTER ROLE repmgr WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN REPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_auth;
ALTER ROLE wom_auth WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_catalog;
ALTER ROLE wom_catalog WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_customers;
ALTER ROLE wom_customers WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_decks;
ALTER ROLE wom_decks WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_inventory;
ALTER ROLE wom_inventory WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_marketplace;
ALTER ROLE wom_marketplace WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_notify;
ALTER ROLE wom_notify WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';
CREATE ROLE wom_reporting;
ALTER ROLE wom_reporting WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'CHANGE_ME';

--
-- User Configurations
--


--
-- Role memberships
--

GRANT readonly_audit TO backup_operator WITH INHERIT TRUE GRANTED BY postgres;






\unrestrict vmGDWzPhqEF2tEFw0uar4fvTiDC5KywaeML9pzxMzjQ6k4fJ4g5f9KMdcJxz0FB

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict FpBAjBnscHaEx3Vlk71D6K3ZqI6OwvmYpJGZOx2dZnoI37yW5KxvPwaf7R1Msgs

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict FpBAjBnscHaEx3Vlk71D6K3ZqI6OwvmYpJGZOx2dZnoI37yW5KxvPwaf7R1Msgs

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict jGXGJpMArWXKb6OjkvthTqASJGNjMNz0HghVd8LfUbVNtlwjhZyO6PIkfBXboNs

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict jGXGJpMArWXKb6OjkvthTqASJGNjMNz0HghVd8LfUbVNtlwjhZyO6PIkfBXboNs

--
-- Database "wom_auth" dump
--

--
-- PostgreSQL database dump
--

\restrict wKEVIDpmhz6pbWyz8OnuEz4cEreo1D30p4ldpwJ02sVtJwKdNIcWCJRRv4tizUl

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_auth; Type: DATABASE; Schema: -; Owner: wom_auth
--

CREATE DATABASE wom_auth WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_auth OWNER TO wom_auth;

\unrestrict wKEVIDpmhz6pbWyz8OnuEz4cEreo1D30p4ldpwJ02sVtJwKdNIcWCJRRv4tizUl
\connect wom_auth
\restrict wKEVIDpmhz6pbWyz8OnuEz4cEreo1D30p4ldpwJ02sVtJwKdNIcWCJRRv4tizUl

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_auth; Type: DATABASE PROPERTIES; Schema: -; Owner: wom_auth
--

ALTER ROLE wom_auth IN DATABASE wom_auth SET search_path TO 'iam', 'sessions', 'federation', 'audit', 'public';


\unrestrict wKEVIDpmhz6pbWyz8OnuEz4cEreo1D30p4ldpwJ02sVtJwKdNIcWCJRRv4tizUl
\connect wom_auth
\restrict wKEVIDpmhz6pbWyz8OnuEz4cEreo1D30p4ldpwJ02sVtJwKdNIcWCJRRv4tizUl

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: audit; Type: SCHEMA; Schema: -; Owner: wom_auth
--

CREATE SCHEMA audit;


ALTER SCHEMA audit OWNER TO wom_auth;

--
-- Name: federation; Type: SCHEMA; Schema: -; Owner: wom_auth
--

CREATE SCHEMA federation;


ALTER SCHEMA federation OWNER TO wom_auth;

--
-- Name: iam; Type: SCHEMA; Schema: -; Owner: wom_auth
--

CREATE SCHEMA iam;


ALTER SCHEMA iam OWNER TO wom_auth;

--
-- Name: sessions; Type: SCHEMA; Schema: -; Owner: wom_auth
--

CREATE SCHEMA sessions;


ALTER SCHEMA sessions OWNER TO wom_auth;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_access_events; Type: TABLE; Schema: audit; Owner: postgres
--

CREATE TABLE audit.admin_access_events (
    admin_event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    actor_type text NOT NULL,
    actor_id text NOT NULL,
    action_name text NOT NULL,
    target_resource text,
    event_time timestamp with time zone DEFAULT now() NOT NULL,
    event_payload jsonb
);


ALTER TABLE audit.admin_access_events OWNER TO postgres;

--
-- Name: login_events; Type: TABLE; Schema: audit; Owner: postgres
--

CREATE TABLE audit.login_events (
    login_event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid,
    source_ip inet,
    success boolean NOT NULL,
    failure_reason text,
    event_time timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE audit.login_events OWNER TO postgres;

--
-- Name: mfa_events; Type: TABLE; Schema: audit; Owner: postgres
--

CREATE TABLE audit.mfa_events (
    mfa_event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid,
    event_type text NOT NULL,
    source_ip inet,
    event_time timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE audit.mfa_events OWNER TO postgres;

--
-- Name: password_reset_events; Type: TABLE; Schema: audit; Owner: postgres
--

CREATE TABLE audit.password_reset_events (
    reset_event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid,
    event_type text NOT NULL,
    event_time timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE audit.password_reset_events OWNER TO postgres;

--
-- Name: identity_providers; Type: TABLE; Schema: federation; Owner: postgres
--

CREATE TABLE federation.identity_providers (
    idp_id uuid DEFAULT gen_random_uuid() NOT NULL,
    provider_name text NOT NULL,
    provider_type text NOT NULL,
    issuer_url text,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE federation.identity_providers OWNER TO postgres;

--
-- Name: user_federation_links; Type: TABLE; Schema: federation; Owner: postgres
--

CREATE TABLE federation.user_federation_links (
    federation_link_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    idp_id uuid NOT NULL,
    external_subject text NOT NULL,
    linked_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE federation.user_federation_links OWNER TO postgres;

--
-- Name: api_clients; Type: TABLE; Schema: iam; Owner: postgres
--

CREATE TABLE iam.api_clients (
    api_client_id uuid DEFAULT gen_random_uuid() NOT NULL,
    client_name text NOT NULL,
    client_type text NOT NULL,
    client_secret_hash text,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE iam.api_clients OWNER TO postgres;

--
-- Name: permissions; Type: TABLE; Schema: iam; Owner: postgres
--

CREATE TABLE iam.permissions (
    permission_id uuid DEFAULT gen_random_uuid() NOT NULL,
    permission_name text NOT NULL,
    description text
);


ALTER TABLE iam.permissions OWNER TO postgres;

--
-- Name: role_permissions; Type: TABLE; Schema: iam; Owner: postgres
--

CREATE TABLE iam.role_permissions (
    role_permission_id uuid DEFAULT gen_random_uuid() NOT NULL,
    role_id uuid NOT NULL,
    permission_id uuid NOT NULL
);


ALTER TABLE iam.role_permissions OWNER TO postgres;

--
-- Name: roles; Type: TABLE; Schema: iam; Owner: postgres
--

CREATE TABLE iam.roles (
    role_id uuid DEFAULT gen_random_uuid() NOT NULL,
    role_name text NOT NULL,
    description text
);


ALTER TABLE iam.roles OWNER TO postgres;

--
-- Name: service_accounts; Type: TABLE; Schema: iam; Owner: postgres
--

CREATE TABLE iam.service_accounts (
    service_account_id uuid DEFAULT gen_random_uuid() NOT NULL,
    service_name text NOT NULL,
    account_name text NOT NULL,
    secret_hash text,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE iam.service_accounts OWNER TO postgres;

--
-- Name: user_roles; Type: TABLE; Schema: iam; Owner: postgres
--

CREATE TABLE iam.user_roles (
    user_role_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    role_id uuid NOT NULL,
    assigned_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE iam.user_roles OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: iam; Owner: postgres
--

CREATE TABLE iam.users (
    user_id uuid DEFAULT gen_random_uuid() NOT NULL,
    email public.citext NOT NULL,
    username public.citext NOT NULL,
    password_hash text NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    mfa_enabled boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE iam.users OWNER TO postgres;

--
-- Name: refresh_tokens; Type: TABLE; Schema: sessions; Owner: postgres
--

CREATE TABLE sessions.refresh_tokens (
    refresh_token_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    token_hash text NOT NULL,
    issued_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    revoked boolean DEFAULT false NOT NULL
);


ALTER TABLE sessions.refresh_tokens OWNER TO postgres;

--
-- Name: revoked_tokens; Type: TABLE; Schema: sessions; Owner: postgres
--

CREATE TABLE sessions.revoked_tokens (
    revoked_token_id uuid DEFAULT gen_random_uuid() NOT NULL,
    token_hash text NOT NULL,
    revoked_reason text,
    revoked_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE sessions.revoked_tokens OWNER TO postgres;

--
-- Name: user_sessions; Type: TABLE; Schema: sessions; Owner: postgres
--

CREATE TABLE sessions.user_sessions (
    session_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    source_ip inet,
    user_agent text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    revoked boolean DEFAULT false NOT NULL
);


ALTER TABLE sessions.user_sessions OWNER TO postgres;

--
-- Name: admin_access_events admin_access_events_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.admin_access_events
    ADD CONSTRAINT admin_access_events_pkey PRIMARY KEY (admin_event_id);


--
-- Name: login_events login_events_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.login_events
    ADD CONSTRAINT login_events_pkey PRIMARY KEY (login_event_id);


--
-- Name: mfa_events mfa_events_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.mfa_events
    ADD CONSTRAINT mfa_events_pkey PRIMARY KEY (mfa_event_id);


--
-- Name: password_reset_events password_reset_events_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.password_reset_events
    ADD CONSTRAINT password_reset_events_pkey PRIMARY KEY (reset_event_id);


--
-- Name: identity_providers identity_providers_pkey; Type: CONSTRAINT; Schema: federation; Owner: postgres
--

ALTER TABLE ONLY federation.identity_providers
    ADD CONSTRAINT identity_providers_pkey PRIMARY KEY (idp_id);


--
-- Name: identity_providers identity_providers_provider_name_key; Type: CONSTRAINT; Schema: federation; Owner: postgres
--

ALTER TABLE ONLY federation.identity_providers
    ADD CONSTRAINT identity_providers_provider_name_key UNIQUE (provider_name);


--
-- Name: user_federation_links user_federation_links_idp_id_external_subject_key; Type: CONSTRAINT; Schema: federation; Owner: postgres
--

ALTER TABLE ONLY federation.user_federation_links
    ADD CONSTRAINT user_federation_links_idp_id_external_subject_key UNIQUE (idp_id, external_subject);


--
-- Name: user_federation_links user_federation_links_pkey; Type: CONSTRAINT; Schema: federation; Owner: postgres
--

ALTER TABLE ONLY federation.user_federation_links
    ADD CONSTRAINT user_federation_links_pkey PRIMARY KEY (federation_link_id);


--
-- Name: api_clients api_clients_client_name_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.api_clients
    ADD CONSTRAINT api_clients_client_name_key UNIQUE (client_name);


--
-- Name: api_clients api_clients_pkey; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.api_clients
    ADD CONSTRAINT api_clients_pkey PRIMARY KEY (api_client_id);


--
-- Name: permissions permissions_permission_name_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.permissions
    ADD CONSTRAINT permissions_permission_name_key UNIQUE (permission_name);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (permission_id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (role_permission_id);


--
-- Name: role_permissions role_permissions_role_id_permission_id_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.role_permissions
    ADD CONSTRAINT role_permissions_role_id_permission_id_key UNIQUE (role_id, permission_id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- Name: roles roles_role_name_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.roles
    ADD CONSTRAINT roles_role_name_key UNIQUE (role_name);


--
-- Name: service_accounts service_accounts_account_name_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.service_accounts
    ADD CONSTRAINT service_accounts_account_name_key UNIQUE (account_name);


--
-- Name: service_accounts service_accounts_pkey; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.service_accounts
    ADD CONSTRAINT service_accounts_pkey PRIMARY KEY (service_account_id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_role_id);


--
-- Name: user_roles user_roles_user_id_role_id_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.user_roles
    ADD CONSTRAINT user_roles_user_id_role_id_key UNIQUE (user_id, role_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: refresh_tokens refresh_tokens_pkey; Type: CONSTRAINT; Schema: sessions; Owner: postgres
--

ALTER TABLE ONLY sessions.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (refresh_token_id);


--
-- Name: revoked_tokens revoked_tokens_pkey; Type: CONSTRAINT; Schema: sessions; Owner: postgres
--

ALTER TABLE ONLY sessions.revoked_tokens
    ADD CONSTRAINT revoked_tokens_pkey PRIMARY KEY (revoked_token_id);


--
-- Name: revoked_tokens revoked_tokens_token_hash_key; Type: CONSTRAINT; Schema: sessions; Owner: postgres
--

ALTER TABLE ONLY sessions.revoked_tokens
    ADD CONSTRAINT revoked_tokens_token_hash_key UNIQUE (token_hash);


--
-- Name: user_sessions user_sessions_pkey; Type: CONSTRAINT; Schema: sessions; Owner: postgres
--

ALTER TABLE ONLY sessions.user_sessions
    ADD CONSTRAINT user_sessions_pkey PRIMARY KEY (session_id);


--
-- Name: idx_login_events_time; Type: INDEX; Schema: audit; Owner: postgres
--

CREATE INDEX idx_login_events_time ON audit.login_events USING btree (event_time);


--
-- Name: idx_login_events_user; Type: INDEX; Schema: audit; Owner: postgres
--

CREATE INDEX idx_login_events_user ON audit.login_events USING btree (user_id);


--
-- Name: idx_user_roles_user; Type: INDEX; Schema: iam; Owner: postgres
--

CREATE INDEX idx_user_roles_user ON iam.user_roles USING btree (user_id);


--
-- Name: idx_users_email; Type: INDEX; Schema: iam; Owner: postgres
--

CREATE INDEX idx_users_email ON iam.users USING btree (email);


--
-- Name: idx_refresh_tokens_user; Type: INDEX; Schema: sessions; Owner: postgres
--

CREATE INDEX idx_refresh_tokens_user ON sessions.refresh_tokens USING btree (user_id);


--
-- Name: idx_user_sessions_user; Type: INDEX; Schema: sessions; Owner: postgres
--

CREATE INDEX idx_user_sessions_user ON sessions.user_sessions USING btree (user_id);


--
-- Name: mfa_events mfa_events_user_id_fkey; Type: FK CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.mfa_events
    ADD CONSTRAINT mfa_events_user_id_fkey FOREIGN KEY (user_id) REFERENCES iam.users(user_id);


--
-- Name: password_reset_events password_reset_events_user_id_fkey; Type: FK CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.password_reset_events
    ADD CONSTRAINT password_reset_events_user_id_fkey FOREIGN KEY (user_id) REFERENCES iam.users(user_id);


--
-- Name: user_federation_links user_federation_links_idp_id_fkey; Type: FK CONSTRAINT; Schema: federation; Owner: postgres
--

ALTER TABLE ONLY federation.user_federation_links
    ADD CONSTRAINT user_federation_links_idp_id_fkey FOREIGN KEY (idp_id) REFERENCES federation.identity_providers(idp_id) ON DELETE CASCADE;


--
-- Name: user_federation_links user_federation_links_user_id_fkey; Type: FK CONSTRAINT; Schema: federation; Owner: postgres
--

ALTER TABLE ONLY federation.user_federation_links
    ADD CONSTRAINT user_federation_links_user_id_fkey FOREIGN KEY (user_id) REFERENCES iam.users(user_id) ON DELETE CASCADE;


--
-- Name: role_permissions role_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.role_permissions
    ADD CONSTRAINT role_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES iam.permissions(permission_id) ON DELETE CASCADE;


--
-- Name: role_permissions role_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.role_permissions
    ADD CONSTRAINT role_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES iam.roles(role_id) ON DELETE CASCADE;


--
-- Name: user_roles user_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.user_roles
    ADD CONSTRAINT user_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES iam.roles(role_id) ON DELETE CASCADE;


--
-- Name: user_roles user_roles_user_id_fkey; Type: FK CONSTRAINT; Schema: iam; Owner: postgres
--

ALTER TABLE ONLY iam.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES iam.users(user_id) ON DELETE CASCADE;


--
-- Name: refresh_tokens refresh_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: sessions; Owner: postgres
--

ALTER TABLE ONLY sessions.refresh_tokens
    ADD CONSTRAINT refresh_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES iam.users(user_id) ON DELETE CASCADE;


--
-- Name: user_sessions user_sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: sessions; Owner: postgres
--

ALTER TABLE ONLY sessions.user_sessions
    ADD CONSTRAINT user_sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES iam.users(user_id) ON DELETE CASCADE;


--
-- Name: DATABASE wom_auth; Type: ACL; Schema: -; Owner: wom_auth
--

REVOKE CONNECT,TEMPORARY ON DATABASE wom_auth FROM PUBLIC;
GRANT CONNECT ON DATABASE wom_auth TO readonly_audit;


--
-- Name: SCHEMA audit; Type: ACL; Schema: -; Owner: wom_auth
--

GRANT USAGE ON SCHEMA audit TO readonly_audit;


--
-- Name: SCHEMA federation; Type: ACL; Schema: -; Owner: wom_auth
--

GRANT USAGE ON SCHEMA federation TO readonly_audit;


--
-- Name: SCHEMA iam; Type: ACL; Schema: -; Owner: wom_auth
--

GRANT USAGE ON SCHEMA iam TO readonly_audit;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO wom_auth;
GRANT USAGE ON SCHEMA public TO readonly_audit;


--
-- Name: SCHEMA sessions; Type: ACL; Schema: -; Owner: wom_auth
--

GRANT USAGE ON SCHEMA sessions TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: audit; Owner: wom_auth
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_auth IN SCHEMA audit GRANT SELECT ON TABLES TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: federation; Owner: wom_auth
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_auth IN SCHEMA federation GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_auth;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: iam; Owner: wom_auth
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_auth IN SCHEMA iam GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_auth;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: sessions; Owner: wom_auth
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_auth IN SCHEMA sessions GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_auth;


--
-- PostgreSQL database dump complete
--

\unrestrict wKEVIDpmhz6pbWyz8OnuEz4cEreo1D30p4ldpwJ02sVtJwKdNIcWCJRRv4tizUl

--
-- Database "wom_catalog" dump
--

--
-- PostgreSQL database dump
--

\restrict lBVsxc8bWBkvwUgJtF1aIqYJWgzvBaZ0Dsm8hwuDNjMumVOMYWgQ6drEjOkhKhN

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_catalog; Type: DATABASE; Schema: -; Owner: wom_catalog
--

CREATE DATABASE wom_catalog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_catalog OWNER TO wom_catalog;

\unrestrict lBVsxc8bWBkvwUgJtF1aIqYJWgzvBaZ0Dsm8hwuDNjMumVOMYWgQ6drEjOkhKhN
\connect wom_catalog
\restrict lBVsxc8bWBkvwUgJtF1aIqYJWgzvBaZ0Dsm8hwuDNjMumVOMYWgQ6drEjOkhKhN

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_catalog; Type: DATABASE PROPERTIES; Schema: -; Owner: wom_catalog
--

ALTER ROLE wom_catalog IN DATABASE wom_catalog SET search_path TO 'public', 'refdata', 'search';
ALTER ROLE readonly_audit IN DATABASE wom_catalog SET search_path TO 'public', 'refdata', 'search';


\unrestrict lBVsxc8bWBkvwUgJtF1aIqYJWgzvBaZ0Dsm8hwuDNjMumVOMYWgQ6drEjOkhKhN
\connect wom_catalog
\restrict lBVsxc8bWBkvwUgJtF1aIqYJWgzvBaZ0Dsm8hwuDNjMumVOMYWgQ6drEjOkhKhN

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: analytics; Type: SCHEMA; Schema: -; Owner: wom_reporting
--

CREATE SCHEMA analytics;


ALTER SCHEMA analytics OWNER TO wom_reporting;

--
-- Name: import; Type: SCHEMA; Schema: -; Owner: wom_catalog
--

CREATE SCHEMA import;


ALTER SCHEMA import OWNER TO wom_catalog;

--
-- Name: refdata; Type: SCHEMA; Schema: -; Owner: wom_catalog
--

CREATE SCHEMA refdata;


ALTER SCHEMA refdata OWNER TO wom_catalog;

--
-- Name: search; Type: SCHEMA; Schema: -; Owner: wom_catalog
--

CREATE SCHEMA search;


ALTER SCHEMA search OWNER TO wom_catalog;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: card_import_errors; Type: TABLE; Schema: import; Owner: postgres
--

CREATE TABLE import.card_import_errors (
    error_id uuid DEFAULT gen_random_uuid() NOT NULL,
    import_job_id uuid NOT NULL,
    external_record_ref text,
    error_type text NOT NULL,
    error_message text NOT NULL,
    raw_payload jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE import.card_import_errors OWNER TO postgres;

--
-- Name: card_import_jobs; Type: TABLE; Schema: import; Owner: postgres
--

CREATE TABLE import.card_import_jobs (
    import_job_id uuid DEFAULT gen_random_uuid() NOT NULL,
    source_name text NOT NULL,
    source_url text,
    requested_by text,
    status text DEFAULT 'PENDING'::text NOT NULL,
    started_at timestamp with time zone,
    finished_at timestamp with time zone,
    total_records integer,
    imported_records integer,
    failed_records integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE import.card_import_jobs OWNER TO postgres;

--
-- Name: card_faces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_faces (
    face_id uuid DEFAULT gen_random_uuid() NOT NULL,
    card_id uuid NOT NULL,
    face_order smallint NOT NULL,
    face_name text NOT NULL,
    mana_cost text,
    type_line text,
    oracle_text text,
    power_value text,
    toughness_value text,
    loyalty_value text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.card_faces OWNER TO postgres;

--
-- Name: card_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_images (
    image_id uuid DEFAULT gen_random_uuid() NOT NULL,
    card_id uuid NOT NULL,
    image_type text NOT NULL,
    image_url text NOT NULL,
    width_px integer,
    height_px integer,
    checksum_sha256 text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.card_images OWNER TO postgres;

--
-- Name: card_prices_reference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_prices_reference (
    ref_price_id uuid DEFAULT gen_random_uuid() NOT NULL,
    card_id uuid NOT NULL,
    source_name text NOT NULL,
    currency text DEFAULT 'EUR'::text NOT NULL,
    avg_price numeric(12,2),
    low_price numeric(12,2),
    trend_price numeric(12,2),
    reverse_holo_price numeric(12,2),
    foil_price numeric(12,2),
    collected_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.card_prices_reference OWNER TO postgres;

--
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards (
    card_id uuid DEFAULT gen_random_uuid() NOT NULL,
    edition_id bigint NOT NULL,
    name text NOT NULL,
    collector_number text,
    card_type text,
    foil boolean DEFAULT false NOT NULL,
    condition text
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- Name: editions; Type: TABLE; Schema: refdata; Owner: postgres
--

CREATE TABLE refdata.editions (
    edition_id bigint NOT NULL,
    game_id bigint NOT NULL,
    code text NOT NULL,
    name text NOT NULL,
    release_date date
);


ALTER TABLE refdata.editions OWNER TO postgres;

--
-- Name: editions_edition_id_seq; Type: SEQUENCE; Schema: refdata; Owner: postgres
--

ALTER TABLE refdata.editions ALTER COLUMN edition_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME refdata.editions_edition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: games; Type: TABLE; Schema: refdata; Owner: postgres
--

CREATE TABLE refdata.games (
    game_id bigint NOT NULL,
    name text NOT NULL,
    publisher text
);


ALTER TABLE refdata.games OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: refdata; Owner: postgres
--

ALTER TABLE refdata.games ALTER COLUMN game_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME refdata.games_game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: languages; Type: TABLE; Schema: refdata; Owner: postgres
--

CREATE TABLE refdata.languages (
    language_id bigint NOT NULL,
    code text NOT NULL,
    name text NOT NULL
);


ALTER TABLE refdata.languages OWNER TO postgres;

--
-- Name: languages_language_id_seq; Type: SEQUENCE; Schema: refdata; Owner: postgres
--

ALTER TABLE refdata.languages ALTER COLUMN language_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME refdata.languages_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: legalities; Type: TABLE; Schema: refdata; Owner: postgres
--

CREATE TABLE refdata.legalities (
    legality_id uuid DEFAULT gen_random_uuid() NOT NULL,
    card_id uuid NOT NULL,
    format_name text NOT NULL,
    legality_status text NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE refdata.legalities OWNER TO postgres;

--
-- Name: rarities; Type: TABLE; Schema: refdata; Owner: postgres
--

CREATE TABLE refdata.rarities (
    rarity_id bigint NOT NULL,
    code text NOT NULL,
    name text NOT NULL
);


ALTER TABLE refdata.rarities OWNER TO postgres;

--
-- Name: rarities_rarity_id_seq; Type: SEQUENCE; Schema: refdata; Owner: postgres
--

ALTER TABLE refdata.rarities ALTER COLUMN rarity_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME refdata.rarities_rarity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: card_search_cache; Type: TABLE; Schema: search; Owner: postgres
--

CREATE TABLE search.card_search_cache (
    cache_id uuid DEFAULT gen_random_uuid() NOT NULL,
    query_hash text NOT NULL,
    query_text text NOT NULL,
    result_payload jsonb NOT NULL,
    expires_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE search.card_search_cache OWNER TO postgres;

--
-- Name: card_import_errors card_import_errors_pkey; Type: CONSTRAINT; Schema: import; Owner: postgres
--

ALTER TABLE ONLY import.card_import_errors
    ADD CONSTRAINT card_import_errors_pkey PRIMARY KEY (error_id);


--
-- Name: card_import_jobs card_import_jobs_pkey; Type: CONSTRAINT; Schema: import; Owner: postgres
--

ALTER TABLE ONLY import.card_import_jobs
    ADD CONSTRAINT card_import_jobs_pkey PRIMARY KEY (import_job_id);


--
-- Name: card_faces card_faces_card_id_face_order_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_faces
    ADD CONSTRAINT card_faces_card_id_face_order_key UNIQUE (card_id, face_order);


--
-- Name: card_faces card_faces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_faces
    ADD CONSTRAINT card_faces_pkey PRIMARY KEY (face_id);


--
-- Name: card_images card_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_images
    ADD CONSTRAINT card_images_pkey PRIMARY KEY (image_id);


--
-- Name: card_prices_reference card_prices_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_prices_reference
    ADD CONSTRAINT card_prices_reference_pkey PRIMARY KEY (ref_price_id);


--
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (card_id);


--
-- Name: editions editions_code_key; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.editions
    ADD CONSTRAINT editions_code_key UNIQUE (code);


--
-- Name: editions editions_pkey; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.editions
    ADD CONSTRAINT editions_pkey PRIMARY KEY (edition_id);


--
-- Name: games games_name_key; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.games
    ADD CONSTRAINT games_name_key UNIQUE (name);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: languages languages_code_key; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.languages
    ADD CONSTRAINT languages_code_key UNIQUE (code);


--
-- Name: languages languages_name_key; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.languages
    ADD CONSTRAINT languages_name_key UNIQUE (name);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (language_id);


--
-- Name: legalities legalities_card_id_format_name_key; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.legalities
    ADD CONSTRAINT legalities_card_id_format_name_key UNIQUE (card_id, format_name);


--
-- Name: legalities legalities_pkey; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.legalities
    ADD CONSTRAINT legalities_pkey PRIMARY KEY (legality_id);


--
-- Name: rarities rarities_code_key; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.rarities
    ADD CONSTRAINT rarities_code_key UNIQUE (code);


--
-- Name: rarities rarities_name_key; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.rarities
    ADD CONSTRAINT rarities_name_key UNIQUE (name);


--
-- Name: rarities rarities_pkey; Type: CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.rarities
    ADD CONSTRAINT rarities_pkey PRIMARY KEY (rarity_id);


--
-- Name: card_search_cache card_search_cache_pkey; Type: CONSTRAINT; Schema: search; Owner: postgres
--

ALTER TABLE ONLY search.card_search_cache
    ADD CONSTRAINT card_search_cache_pkey PRIMARY KEY (cache_id);


--
-- Name: card_search_cache card_search_cache_query_hash_key; Type: CONSTRAINT; Schema: search; Owner: postgres
--

ALTER TABLE ONLY search.card_search_cache
    ADD CONSTRAINT card_search_cache_query_hash_key UNIQUE (query_hash);


--
-- Name: idx_card_import_errors_job; Type: INDEX; Schema: import; Owner: postgres
--

CREATE INDEX idx_card_import_errors_job ON import.card_import_errors USING btree (import_job_id);


--
-- Name: idx_card_prices_reference_card; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_card_prices_reference_card ON public.card_prices_reference USING btree (card_id);


--
-- Name: idx_cards_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cards_name ON public.cards USING btree (name);


--
-- Name: idx_legalities_card; Type: INDEX; Schema: refdata; Owner: postgres
--

CREATE INDEX idx_legalities_card ON refdata.legalities USING btree (card_id);


--
-- Name: card_import_errors card_import_errors_import_job_id_fkey; Type: FK CONSTRAINT; Schema: import; Owner: postgres
--

ALTER TABLE ONLY import.card_import_errors
    ADD CONSTRAINT card_import_errors_import_job_id_fkey FOREIGN KEY (import_job_id) REFERENCES import.card_import_jobs(import_job_id) ON DELETE CASCADE;


--
-- Name: card_faces card_faces_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_faces
    ADD CONSTRAINT card_faces_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.cards(card_id) ON DELETE CASCADE;


--
-- Name: card_images card_images_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_images
    ADD CONSTRAINT card_images_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.cards(card_id) ON DELETE CASCADE;


--
-- Name: card_prices_reference card_prices_reference_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_prices_reference
    ADD CONSTRAINT card_prices_reference_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.cards(card_id) ON DELETE CASCADE;


--
-- Name: cards cards_edition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_edition_id_fkey FOREIGN KEY (edition_id) REFERENCES refdata.editions(edition_id);


--
-- Name: editions editions_game_id_fkey; Type: FK CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.editions
    ADD CONSTRAINT editions_game_id_fkey FOREIGN KEY (game_id) REFERENCES refdata.games(game_id);


--
-- Name: legalities legalities_card_id_fkey; Type: FK CONSTRAINT; Schema: refdata; Owner: postgres
--

ALTER TABLE ONLY refdata.legalities
    ADD CONSTRAINT legalities_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.cards(card_id) ON DELETE CASCADE;


--
-- Name: DATABASE wom_catalog; Type: ACL; Schema: -; Owner: wom_catalog
--

REVOKE CONNECT,TEMPORARY ON DATABASE wom_catalog FROM PUBLIC;
GRANT CONNECT ON DATABASE wom_catalog TO readonly_audit;


--
-- Name: SCHEMA analytics; Type: ACL; Schema: -; Owner: wom_reporting
--

GRANT USAGE ON SCHEMA analytics TO readonly_audit;


--
-- Name: SCHEMA import; Type: ACL; Schema: -; Owner: wom_catalog
--

GRANT USAGE ON SCHEMA import TO readonly_audit;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO wom_catalog;
GRANT USAGE ON SCHEMA public TO readonly_audit;


--
-- Name: SCHEMA refdata; Type: ACL; Schema: -; Owner: wom_catalog
--

GRANT USAGE ON SCHEMA refdata TO readonly_audit;


--
-- Name: SCHEMA search; Type: ACL; Schema: -; Owner: wom_catalog
--

GRANT USAGE ON SCHEMA search TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: wom_catalog
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_catalog IN SCHEMA public GRANT ALL ON SEQUENCES TO wom_catalog;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: wom_catalog
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_catalog IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_catalog;
ALTER DEFAULT PRIVILEGES FOR ROLE wom_catalog IN SCHEMA public GRANT SELECT ON TABLES TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: refdata; Owner: wom_catalog
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_catalog IN SCHEMA refdata GRANT SELECT ON TABLES TO readonly_audit;


--
-- PostgreSQL database dump complete
--

\unrestrict lBVsxc8bWBkvwUgJtF1aIqYJWgzvBaZ0Dsm8hwuDNjMumVOMYWgQ6drEjOkhKhN

--
-- Database "wom_customers" dump
--

--
-- PostgreSQL database dump
--

\restrict aCy0vkIvkxfg13De318wzpVrqsOfxoeD6m4wDfADMZFR7IIsRZzROtyFw77jOeS

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_customers; Type: DATABASE; Schema: -; Owner: wom_customers
--

CREATE DATABASE wom_customers WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_customers OWNER TO wom_customers;

\unrestrict aCy0vkIvkxfg13De318wzpVrqsOfxoeD6m4wDfADMZFR7IIsRZzROtyFw77jOeS
\connect wom_customers
\restrict aCy0vkIvkxfg13De318wzpVrqsOfxoeD6m4wDfADMZFR7IIsRZzROtyFw77jOeS

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: audit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA audit;


ALTER SCHEMA audit OWNER TO postgres;

--
-- Name: commerce; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA commerce;


ALTER SCHEMA commerce OWNER TO postgres;

--
-- Name: crm; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA crm;


ALTER SCHEMA crm OWNER TO postgres;

--
-- Name: loyalty; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA loyalty;


ALTER SCHEMA loyalty OWNER TO postgres;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customer_events; Type: TABLE; Schema: audit; Owner: postgres
--

CREATE TABLE audit.customer_events (
    customer_event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    event_type text NOT NULL,
    actor_ref text,
    event_payload jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE audit.customer_events OWNER TO postgres;

--
-- Name: buyer_profiles; Type: TABLE; Schema: commerce; Owner: postgres
--

CREATE TABLE commerce.buyer_profiles (
    buyer_profile_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    buyer_status text DEFAULT 'ACTIVE'::text NOT NULL,
    marketplace_rating numeric(5,2),
    total_orders integer DEFAULT 0 NOT NULL,
    total_spend numeric(14,2) DEFAULT 0 NOT NULL,
    fraud_risk_level text DEFAULT 'LOW'::text NOT NULL
);


ALTER TABLE commerce.buyer_profiles OWNER TO postgres;

--
-- Name: customer_payment_profiles; Type: TABLE; Schema: commerce; Owner: postgres
--

CREATE TABLE commerce.customer_payment_profiles (
    payment_profile_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    provider_name text NOT NULL,
    provider_token_ref text NOT NULL,
    brand text,
    last4 text,
    expiry_month integer,
    expiry_year integer,
    is_default boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE commerce.customer_payment_profiles OWNER TO postgres;

--
-- Name: seller_payout_accounts; Type: TABLE; Schema: commerce; Owner: postgres
--

CREATE TABLE commerce.seller_payout_accounts (
    payout_account_id uuid DEFAULT gen_random_uuid() NOT NULL,
    seller_profile_id uuid NOT NULL,
    provider_name text NOT NULL,
    provider_account_ref text NOT NULL,
    account_status text DEFAULT 'ACTIVE'::text NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE commerce.seller_payout_accounts OWNER TO postgres;

--
-- Name: seller_profiles; Type: TABLE; Schema: commerce; Owner: postgres
--

CREATE TABLE commerce.seller_profiles (
    seller_profile_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    seller_type text NOT NULL,
    seller_status text DEFAULT 'ACTIVE'::text NOT NULL,
    store_name text,
    public_slug text,
    marketplace_rating numeric(5,2),
    total_sales integer DEFAULT 0 NOT NULL,
    payout_currency text DEFAULT 'EUR'::text,
    CONSTRAINT seller_profiles_seller_type_check CHECK ((seller_type = ANY (ARRAY['PRIVATE'::text, 'PRO_STORE'::text])))
);


ALTER TABLE commerce.seller_profiles OWNER TO postgres;

--
-- Name: seller_store_links; Type: TABLE; Schema: commerce; Owner: postgres
--

CREATE TABLE commerce.seller_store_links (
    seller_store_link_id uuid DEFAULT gen_random_uuid() NOT NULL,
    seller_profile_id uuid NOT NULL,
    store_id bigint NOT NULL,
    relationship_type text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT seller_store_links_relationship_type_check CHECK ((relationship_type = ANY (ARRAY['OWNER'::text, 'STAFF'::text, 'CONSIGNMENT'::text, 'PARTNER'::text])))
);


ALTER TABLE commerce.seller_store_links OWNER TO postgres;

--
-- Name: addresses; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.addresses (
    address_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    address_type text NOT NULL,
    line_1 text NOT NULL,
    line_2 text,
    city text NOT NULL,
    postal_code text,
    state_region text,
    country_code text NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT addresses_address_type_check CHECK ((address_type = ANY (ARRAY['BILLING'::text, 'SHIPPING'::text, 'HOME'::text, 'STORE_PICKUP'::text])))
);


ALTER TABLE crm.addresses OWNER TO postgres;

--
-- Name: business_profiles; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.business_profiles (
    business_profile_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    legal_name text NOT NULL,
    trade_name text,
    vat_number text,
    tax_residency_country text,
    registration_number text,
    contact_person_name text
);


ALTER TABLE crm.business_profiles OWNER TO postgres;

--
-- Name: contact_points; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.contact_points (
    contact_point_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    contact_type text NOT NULL,
    contact_value text NOT NULL,
    is_primary boolean DEFAULT false NOT NULL,
    is_verified boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT contact_points_contact_type_check CHECK ((contact_type = ANY (ARRAY['EMAIL'::text, 'PHONE'::text, 'WHATSAPP'::text])))
);


ALTER TABLE crm.contact_points OWNER TO postgres;

--
-- Name: customer_consents; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.customer_consents (
    consent_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    consent_type text NOT NULL,
    consent_status text NOT NULL,
    consent_source text,
    granted_at timestamp with time zone,
    revoked_at timestamp with time zone,
    CONSTRAINT customer_consents_consent_status_check CHECK ((consent_status = ANY (ARRAY['GRANTED'::text, 'REVOKED'::text, 'PENDING'::text])))
);


ALTER TABLE crm.customer_consents OWNER TO postgres;

--
-- Name: customer_preferences; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.customer_preferences (
    preference_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    preferred_currency text DEFAULT 'EUR'::text,
    preferred_language text,
    preferred_shipping_country text,
    wants_price_alerts boolean DEFAULT true NOT NULL,
    wants_restock_alerts boolean DEFAULT true NOT NULL,
    wants_marketing boolean DEFAULT false NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE crm.customer_preferences OWNER TO postgres;

--
-- Name: customer_segments; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.customer_segments (
    segment_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    segment_name text NOT NULL,
    assigned_at timestamp with time zone DEFAULT now() NOT NULL,
    assigned_by text
);


ALTER TABLE crm.customer_segments OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.customers (
    customer_id uuid DEFAULT gen_random_uuid() NOT NULL,
    auth_user_id uuid,
    customer_type text NOT NULL,
    customer_status text DEFAULT 'ACTIVE'::text NOT NULL,
    display_name text NOT NULL,
    primary_email public.citext,
    primary_phone text,
    default_language text,
    region_code text,
    country_code text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT customers_customer_type_check CHECK ((customer_type = ANY (ARRAY['INDIVIDUAL'::text, 'BUSINESS'::text])))
);


ALTER TABLE crm.customers OWNER TO postgres;

--
-- Name: individual_profiles; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE crm.individual_profiles (
    individual_profile_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    birth_date date,
    government_id_type text,
    government_id_masked text
);


ALTER TABLE crm.individual_profiles OWNER TO postgres;

--
-- Name: loyalty_accounts; Type: TABLE; Schema: loyalty; Owner: postgres
--

CREATE TABLE loyalty.loyalty_accounts (
    loyalty_account_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    loyalty_number text NOT NULL,
    status text DEFAULT 'ACTIVE'::text NOT NULL,
    points_balance integer DEFAULT 0 NOT NULL,
    tier_name text DEFAULT 'STANDARD'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE loyalty.loyalty_accounts OWNER TO postgres;

--
-- Name: loyalty_transactions; Type: TABLE; Schema: loyalty; Owner: postgres
--

CREATE TABLE loyalty.loyalty_transactions (
    loyalty_tx_id uuid DEFAULT gen_random_uuid() NOT NULL,
    loyalty_account_id uuid NOT NULL,
    transaction_type text NOT NULL,
    points_delta integer NOT NULL,
    source_ref text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE loyalty.loyalty_transactions OWNER TO postgres;

--
-- Name: customer_events customer_events_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.customer_events
    ADD CONSTRAINT customer_events_pkey PRIMARY KEY (customer_event_id);


--
-- Name: buyer_profiles buyer_profiles_customer_id_key; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.buyer_profiles
    ADD CONSTRAINT buyer_profiles_customer_id_key UNIQUE (customer_id);


--
-- Name: buyer_profiles buyer_profiles_pkey; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.buyer_profiles
    ADD CONSTRAINT buyer_profiles_pkey PRIMARY KEY (buyer_profile_id);


--
-- Name: customer_payment_profiles customer_payment_profiles_pkey; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.customer_payment_profiles
    ADD CONSTRAINT customer_payment_profiles_pkey PRIMARY KEY (payment_profile_id);


--
-- Name: seller_payout_accounts seller_payout_accounts_pkey; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_payout_accounts
    ADD CONSTRAINT seller_payout_accounts_pkey PRIMARY KEY (payout_account_id);


--
-- Name: seller_profiles seller_profiles_customer_id_key; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_profiles
    ADD CONSTRAINT seller_profiles_customer_id_key UNIQUE (customer_id);


--
-- Name: seller_profiles seller_profiles_pkey; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_profiles
    ADD CONSTRAINT seller_profiles_pkey PRIMARY KEY (seller_profile_id);


--
-- Name: seller_profiles seller_profiles_public_slug_key; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_profiles
    ADD CONSTRAINT seller_profiles_public_slug_key UNIQUE (public_slug);


--
-- Name: seller_store_links seller_store_links_pkey; Type: CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_store_links
    ADD CONSTRAINT seller_store_links_pkey PRIMARY KEY (seller_store_link_id);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (address_id);


--
-- Name: business_profiles business_profiles_customer_id_key; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.business_profiles
    ADD CONSTRAINT business_profiles_customer_id_key UNIQUE (customer_id);


--
-- Name: business_profiles business_profiles_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.business_profiles
    ADD CONSTRAINT business_profiles_pkey PRIMARY KEY (business_profile_id);


--
-- Name: contact_points contact_points_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.contact_points
    ADD CONSTRAINT contact_points_pkey PRIMARY KEY (contact_point_id);


--
-- Name: customer_consents customer_consents_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customer_consents
    ADD CONSTRAINT customer_consents_pkey PRIMARY KEY (consent_id);


--
-- Name: customer_preferences customer_preferences_customer_id_key; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customer_preferences
    ADD CONSTRAINT customer_preferences_customer_id_key UNIQUE (customer_id);


--
-- Name: customer_preferences customer_preferences_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customer_preferences
    ADD CONSTRAINT customer_preferences_pkey PRIMARY KEY (preference_id);


--
-- Name: customer_segments customer_segments_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customer_segments
    ADD CONSTRAINT customer_segments_pkey PRIMARY KEY (segment_id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: individual_profiles individual_profiles_customer_id_key; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.individual_profiles
    ADD CONSTRAINT individual_profiles_customer_id_key UNIQUE (customer_id);


--
-- Name: individual_profiles individual_profiles_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.individual_profiles
    ADD CONSTRAINT individual_profiles_pkey PRIMARY KEY (individual_profile_id);


--
-- Name: loyalty_accounts loyalty_accounts_customer_id_key; Type: CONSTRAINT; Schema: loyalty; Owner: postgres
--

ALTER TABLE ONLY loyalty.loyalty_accounts
    ADD CONSTRAINT loyalty_accounts_customer_id_key UNIQUE (customer_id);


--
-- Name: loyalty_accounts loyalty_accounts_loyalty_number_key; Type: CONSTRAINT; Schema: loyalty; Owner: postgres
--

ALTER TABLE ONLY loyalty.loyalty_accounts
    ADD CONSTRAINT loyalty_accounts_loyalty_number_key UNIQUE (loyalty_number);


--
-- Name: loyalty_accounts loyalty_accounts_pkey; Type: CONSTRAINT; Schema: loyalty; Owner: postgres
--

ALTER TABLE ONLY loyalty.loyalty_accounts
    ADD CONSTRAINT loyalty_accounts_pkey PRIMARY KEY (loyalty_account_id);


--
-- Name: loyalty_transactions loyalty_transactions_pkey; Type: CONSTRAINT; Schema: loyalty; Owner: postgres
--

ALTER TABLE ONLY loyalty.loyalty_transactions
    ADD CONSTRAINT loyalty_transactions_pkey PRIMARY KEY (loyalty_tx_id);


--
-- Name: idx_customer_events_customer; Type: INDEX; Schema: audit; Owner: postgres
--

CREATE INDEX idx_customer_events_customer ON audit.customer_events USING btree (customer_id);


--
-- Name: idx_buyer_profiles_customer; Type: INDEX; Schema: commerce; Owner: postgres
--

CREATE INDEX idx_buyer_profiles_customer ON commerce.buyer_profiles USING btree (customer_id);


--
-- Name: idx_payment_profiles_customer; Type: INDEX; Schema: commerce; Owner: postgres
--

CREATE INDEX idx_payment_profiles_customer ON commerce.customer_payment_profiles USING btree (customer_id);


--
-- Name: idx_seller_profiles_customer; Type: INDEX; Schema: commerce; Owner: postgres
--

CREATE INDEX idx_seller_profiles_customer ON commerce.seller_profiles USING btree (customer_id);


--
-- Name: idx_seller_store_links_seller; Type: INDEX; Schema: commerce; Owner: postgres
--

CREATE INDEX idx_seller_store_links_seller ON commerce.seller_store_links USING btree (seller_profile_id);


--
-- Name: idx_addresses_customer; Type: INDEX; Schema: crm; Owner: postgres
--

CREATE INDEX idx_addresses_customer ON crm.addresses USING btree (customer_id);


--
-- Name: idx_consents_customer; Type: INDEX; Schema: crm; Owner: postgres
--

CREATE INDEX idx_consents_customer ON crm.customer_consents USING btree (customer_id);


--
-- Name: idx_contact_points_customer; Type: INDEX; Schema: crm; Owner: postgres
--

CREATE INDEX idx_contact_points_customer ON crm.contact_points USING btree (customer_id);


--
-- Name: idx_customers_auth_user_id; Type: INDEX; Schema: crm; Owner: postgres
--

CREATE INDEX idx_customers_auth_user_id ON crm.customers USING btree (auth_user_id);


--
-- Name: idx_customers_email; Type: INDEX; Schema: crm; Owner: postgres
--

CREATE INDEX idx_customers_email ON crm.customers USING btree (primary_email);


--
-- Name: idx_loyalty_accounts_customer; Type: INDEX; Schema: loyalty; Owner: postgres
--

CREATE INDEX idx_loyalty_accounts_customer ON loyalty.loyalty_accounts USING btree (customer_id);


--
-- Name: customer_events customer_events_customer_id_fkey; Type: FK CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.customer_events
    ADD CONSTRAINT customer_events_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: buyer_profiles buyer_profiles_customer_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.buyer_profiles
    ADD CONSTRAINT buyer_profiles_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: customer_payment_profiles customer_payment_profiles_customer_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.customer_payment_profiles
    ADD CONSTRAINT customer_payment_profiles_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: seller_payout_accounts seller_payout_accounts_seller_profile_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_payout_accounts
    ADD CONSTRAINT seller_payout_accounts_seller_profile_id_fkey FOREIGN KEY (seller_profile_id) REFERENCES commerce.seller_profiles(seller_profile_id) ON DELETE CASCADE;


--
-- Name: seller_profiles seller_profiles_customer_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_profiles
    ADD CONSTRAINT seller_profiles_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: seller_store_links seller_store_links_seller_profile_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: postgres
--

ALTER TABLE ONLY commerce.seller_store_links
    ADD CONSTRAINT seller_store_links_seller_profile_id_fkey FOREIGN KEY (seller_profile_id) REFERENCES commerce.seller_profiles(seller_profile_id) ON DELETE CASCADE;


--
-- Name: addresses addresses_customer_id_fkey; Type: FK CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.addresses
    ADD CONSTRAINT addresses_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: business_profiles business_profiles_customer_id_fkey; Type: FK CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.business_profiles
    ADD CONSTRAINT business_profiles_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: contact_points contact_points_customer_id_fkey; Type: FK CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.contact_points
    ADD CONSTRAINT contact_points_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: customer_consents customer_consents_customer_id_fkey; Type: FK CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customer_consents
    ADD CONSTRAINT customer_consents_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: customer_preferences customer_preferences_customer_id_fkey; Type: FK CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customer_preferences
    ADD CONSTRAINT customer_preferences_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: customer_segments customer_segments_customer_id_fkey; Type: FK CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.customer_segments
    ADD CONSTRAINT customer_segments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: individual_profiles individual_profiles_customer_id_fkey; Type: FK CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY crm.individual_profiles
    ADD CONSTRAINT individual_profiles_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: loyalty_accounts loyalty_accounts_customer_id_fkey; Type: FK CONSTRAINT; Schema: loyalty; Owner: postgres
--

ALTER TABLE ONLY loyalty.loyalty_accounts
    ADD CONSTRAINT loyalty_accounts_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES crm.customers(customer_id) ON DELETE CASCADE;


--
-- Name: loyalty_transactions loyalty_transactions_loyalty_account_id_fkey; Type: FK CONSTRAINT; Schema: loyalty; Owner: postgres
--

ALTER TABLE ONLY loyalty.loyalty_transactions
    ADD CONSTRAINT loyalty_transactions_loyalty_account_id_fkey FOREIGN KEY (loyalty_account_id) REFERENCES loyalty.loyalty_accounts(loyalty_account_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict aCy0vkIvkxfg13De318wzpVrqsOfxoeD6m4wDfADMZFR7IIsRZzROtyFw77jOeS

--
-- Database "wom_decks" dump
--

--
-- PostgreSQL database dump
--

\restrict 9FGlq4xWmhZLwdOKEKRhEJSSHMZDQIaKvtRvoM2AaUCnS10XmDc4Oph3eIbdqLV

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_decks; Type: DATABASE; Schema: -; Owner: wom_decks
--

CREATE DATABASE wom_decks WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_decks OWNER TO wom_decks;

\unrestrict 9FGlq4xWmhZLwdOKEKRhEJSSHMZDQIaKvtRvoM2AaUCnS10XmDc4Oph3eIbdqLV
\connect wom_decks
\restrict 9FGlq4xWmhZLwdOKEKRhEJSSHMZDQIaKvtRvoM2AaUCnS10XmDc4Oph3eIbdqLV

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_decks; Type: DATABASE PROPERTIES; Schema: -; Owner: wom_decks
--

ALTER ROLE wom_decks IN DATABASE wom_decks SET search_path TO 'public', 'sharing', 'import';


\unrestrict 9FGlq4xWmhZLwdOKEKRhEJSSHMZDQIaKvtRvoM2AaUCnS10XmDc4Oph3eIbdqLV
\connect wom_decks
\restrict 9FGlq4xWmhZLwdOKEKRhEJSSHMZDQIaKvtRvoM2AaUCnS10XmDc4Oph3eIbdqLV

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: import; Type: SCHEMA; Schema: -; Owner: wom_decks
--

CREATE SCHEMA import;


ALTER SCHEMA import OWNER TO wom_decks;

--
-- Name: sharing; Type: SCHEMA; Schema: -; Owner: wom_decks
--

CREATE SCHEMA sharing;


ALTER SCHEMA sharing OWNER TO wom_decks;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: import_lists; Type: TABLE; Schema: import; Owner: postgres
--

CREATE TABLE import.import_lists (
    import_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    source_name text NOT NULL,
    original_payload jsonb,
    status text DEFAULT 'PENDING'::text NOT NULL,
    imported_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE import.import_lists OWNER TO postgres;

--
-- Name: collection_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.collection_cards (
    collection_card_id uuid DEFAULT gen_random_uuid() NOT NULL,
    collection_id uuid NOT NULL,
    card_id uuid NOT NULL,
    quantity integer NOT NULL,
    condition text,
    language_code text,
    foil boolean DEFAULT false NOT NULL,
    acquired_at timestamp with time zone,
    CONSTRAINT collection_cards_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.collection_cards OWNER TO postgres;

--
-- Name: collections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.collections (
    collection_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    collection_name text DEFAULT 'Default Collection'::text NOT NULL,
    visibility text DEFAULT 'PRIVATE'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.collections OWNER TO postgres;

--
-- Name: deck_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deck_cards (
    deck_card_id uuid DEFAULT gen_random_uuid() NOT NULL,
    deck_id uuid NOT NULL,
    card_id uuid NOT NULL,
    quantity integer NOT NULL,
    zone text DEFAULT 'MAINBOARD'::text NOT NULL,
    CONSTRAINT deck_cards_quantity_check CHECK ((quantity > 0))
);


ALTER TABLE public.deck_cards OWNER TO postgres;

--
-- Name: deck_formats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deck_formats (
    format_id bigint NOT NULL,
    format_name text NOT NULL,
    game_code text NOT NULL
);


ALTER TABLE public.deck_formats OWNER TO postgres;

--
-- Name: deck_formats_format_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.deck_formats ALTER COLUMN format_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.deck_formats_format_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: deck_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deck_tags (
    tag_id uuid DEFAULT gen_random_uuid() NOT NULL,
    deck_id uuid NOT NULL,
    tag_name text NOT NULL
);


ALTER TABLE public.deck_tags OWNER TO postgres;

--
-- Name: deck_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deck_versions (
    version_id uuid DEFAULT gen_random_uuid() NOT NULL,
    deck_id uuid NOT NULL,
    version_number integer NOT NULL,
    snapshot_payload jsonb NOT NULL,
    change_summary text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.deck_versions OWNER TO postgres;

--
-- Name: decks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.decks (
    deck_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    format_id bigint,
    deck_name text NOT NULL,
    visibility text DEFAULT 'PRIVATE'::text NOT NULL,
    description text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.decks OWNER TO postgres;

--
-- Name: shared_decks; Type: TABLE; Schema: sharing; Owner: postgres
--

CREATE TABLE sharing.shared_decks (
    shared_deck_id uuid DEFAULT gen_random_uuid() NOT NULL,
    deck_id uuid NOT NULL,
    public_slug text NOT NULL,
    shared_at timestamp with time zone DEFAULT now() NOT NULL,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE sharing.shared_decks OWNER TO postgres;

--
-- Name: import_lists import_lists_pkey; Type: CONSTRAINT; Schema: import; Owner: postgres
--

ALTER TABLE ONLY import.import_lists
    ADD CONSTRAINT import_lists_pkey PRIMARY KEY (import_id);


--
-- Name: collection_cards collection_cards_collection_id_card_id_condition_language_c_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collection_cards
    ADD CONSTRAINT collection_cards_collection_id_card_id_condition_language_c_key UNIQUE (collection_id, card_id, condition, language_code, foil);


--
-- Name: collection_cards collection_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collection_cards
    ADD CONSTRAINT collection_cards_pkey PRIMARY KEY (collection_card_id);


--
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (collection_id);


--
-- Name: deck_cards deck_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_cards
    ADD CONSTRAINT deck_cards_pkey PRIMARY KEY (deck_card_id);


--
-- Name: deck_formats deck_formats_format_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_formats
    ADD CONSTRAINT deck_formats_format_name_key UNIQUE (format_name);


--
-- Name: deck_formats deck_formats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_formats
    ADD CONSTRAINT deck_formats_pkey PRIMARY KEY (format_id);


--
-- Name: deck_tags deck_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_tags
    ADD CONSTRAINT deck_tags_pkey PRIMARY KEY (tag_id);


--
-- Name: deck_versions deck_versions_deck_id_version_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_versions
    ADD CONSTRAINT deck_versions_deck_id_version_number_key UNIQUE (deck_id, version_number);


--
-- Name: deck_versions deck_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_versions
    ADD CONSTRAINT deck_versions_pkey PRIMARY KEY (version_id);


--
-- Name: decks decks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.decks
    ADD CONSTRAINT decks_pkey PRIMARY KEY (deck_id);


--
-- Name: shared_decks shared_decks_pkey; Type: CONSTRAINT; Schema: sharing; Owner: postgres
--

ALTER TABLE ONLY sharing.shared_decks
    ADD CONSTRAINT shared_decks_pkey PRIMARY KEY (shared_deck_id);


--
-- Name: shared_decks shared_decks_public_slug_key; Type: CONSTRAINT; Schema: sharing; Owner: postgres
--

ALTER TABLE ONLY sharing.shared_decks
    ADD CONSTRAINT shared_decks_public_slug_key UNIQUE (public_slug);


--
-- Name: idx_collection_cards_collection; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_collection_cards_collection ON public.collection_cards USING btree (collection_id);


--
-- Name: idx_collections_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_collections_user ON public.collections USING btree (user_id);


--
-- Name: idx_deck_cards_deck; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_deck_cards_deck ON public.deck_cards USING btree (deck_id);


--
-- Name: idx_decks_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_decks_user ON public.decks USING btree (user_id);


--
-- Name: collection_cards collection_cards_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collection_cards
    ADD CONSTRAINT collection_cards_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.collections(collection_id) ON DELETE CASCADE;


--
-- Name: deck_cards deck_cards_deck_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_cards
    ADD CONSTRAINT deck_cards_deck_id_fkey FOREIGN KEY (deck_id) REFERENCES public.decks(deck_id) ON DELETE CASCADE;


--
-- Name: deck_tags deck_tags_deck_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_tags
    ADD CONSTRAINT deck_tags_deck_id_fkey FOREIGN KEY (deck_id) REFERENCES public.decks(deck_id) ON DELETE CASCADE;


--
-- Name: deck_versions deck_versions_deck_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck_versions
    ADD CONSTRAINT deck_versions_deck_id_fkey FOREIGN KEY (deck_id) REFERENCES public.decks(deck_id) ON DELETE CASCADE;


--
-- Name: decks decks_format_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.decks
    ADD CONSTRAINT decks_format_id_fkey FOREIGN KEY (format_id) REFERENCES public.deck_formats(format_id);


--
-- Name: shared_decks shared_decks_deck_id_fkey; Type: FK CONSTRAINT; Schema: sharing; Owner: postgres
--

ALTER TABLE ONLY sharing.shared_decks
    ADD CONSTRAINT shared_decks_deck_id_fkey FOREIGN KEY (deck_id) REFERENCES public.decks(deck_id) ON DELETE CASCADE;


--
-- Name: DATABASE wom_decks; Type: ACL; Schema: -; Owner: wom_decks
--

REVOKE CONNECT,TEMPORARY ON DATABASE wom_decks FROM PUBLIC;
GRANT CONNECT ON DATABASE wom_decks TO readonly_audit;


--
-- Name: SCHEMA import; Type: ACL; Schema: -; Owner: wom_decks
--

GRANT USAGE ON SCHEMA import TO readonly_audit;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO wom_decks;
GRANT USAGE ON SCHEMA public TO readonly_audit;


--
-- Name: SCHEMA sharing; Type: ACL; Schema: -; Owner: wom_decks
--

GRANT USAGE ON SCHEMA sharing TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: import; Owner: wom_decks
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_decks IN SCHEMA import GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_decks;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: wom_decks
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_decks IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_decks;
ALTER DEFAULT PRIVILEGES FOR ROLE wom_decks IN SCHEMA public GRANT SELECT ON TABLES TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: sharing; Owner: wom_decks
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_decks IN SCHEMA sharing GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_decks;


--
-- PostgreSQL database dump complete
--

\unrestrict 9FGlq4xWmhZLwdOKEKRhEJSSHMZDQIaKvtRvoM2AaUCnS10XmDc4Oph3eIbdqLV

--
-- Database "wom_inventory" dump
--

--
-- PostgreSQL database dump
--

\restrict qwNnfgnLj8k5XPyeJeRhPK3mcwYx8s7g8sdxov7bvLWsPKmfGWQIOGmCB9ttUyH

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_inventory; Type: DATABASE; Schema: -; Owner: wom_inventory
--

CREATE DATABASE wom_inventory WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_inventory OWNER TO wom_inventory;

\unrestrict qwNnfgnLj8k5XPyeJeRhPK3mcwYx8s7g8sdxov7bvLWsPKmfGWQIOGmCB9ttUyH
\connect wom_inventory
\restrict qwNnfgnLj8k5XPyeJeRhPK3mcwYx8s7g8sdxov7bvLWsPKmfGWQIOGmCB9ttUyH

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_inventory; Type: DATABASE PROPERTIES; Schema: -; Owner: wom_inventory
--

ALTER ROLE wom_inventory IN DATABASE wom_inventory SET search_path TO 'public', 'retail', 'warehouse', 'audit';


\unrestrict qwNnfgnLj8k5XPyeJeRhPK3mcwYx8s7g8sdxov7bvLWsPKmfGWQIOGmCB9ttUyH
\connect wom_inventory
\restrict qwNnfgnLj8k5XPyeJeRhPK3mcwYx8s7g8sdxov7bvLWsPKmfGWQIOGmCB9ttUyH

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: audit; Type: SCHEMA; Schema: -; Owner: wom_inventory
--

CREATE SCHEMA audit;


ALTER SCHEMA audit OWNER TO wom_inventory;

--
-- Name: retail; Type: SCHEMA; Schema: -; Owner: wom_inventory
--

CREATE SCHEMA retail;


ALTER SCHEMA retail OWNER TO wom_inventory;

--
-- Name: warehouse; Type: SCHEMA; Schema: -; Owner: wom_inventory
--

CREATE SCHEMA warehouse;


ALTER SCHEMA warehouse OWNER TO wom_inventory;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: inventory_adjustments; Type: TABLE; Schema: audit; Owner: postgres
--

CREATE TABLE audit.inventory_adjustments (
    adjustment_id uuid DEFAULT gen_random_uuid() NOT NULL,
    stock_item_id uuid NOT NULL,
    old_qty integer NOT NULL,
    new_qty integer NOT NULL,
    reason text NOT NULL,
    adjusted_by text,
    adjusted_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE audit.inventory_adjustments OWNER TO postgres;

--
-- Name: purchase_order_lines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_order_lines (
    po_line_id uuid DEFAULT gen_random_uuid() NOT NULL,
    po_id uuid NOT NULL,
    card_id uuid NOT NULL,
    qty integer NOT NULL,
    unit_cost numeric(12,2) NOT NULL,
    condition text,
    language_code text,
    foil boolean DEFAULT false NOT NULL,
    CONSTRAINT purchase_order_lines_qty_check CHECK ((qty > 0))
);


ALTER TABLE public.purchase_order_lines OWNER TO postgres;

--
-- Name: purchase_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_orders (
    po_id uuid DEFAULT gen_random_uuid() NOT NULL,
    supplier_id uuid NOT NULL,
    po_number text NOT NULL,
    status text DEFAULT 'DRAFT'::text NOT NULL,
    currency text DEFAULT 'EUR'::text NOT NULL,
    total_amount numeric(12,2) DEFAULT 0 NOT NULL,
    expected_delivery_at timestamp with time zone,
    created_by text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.purchase_orders OWNER TO postgres;

--
-- Name: stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stores (
    store_id bigint NOT NULL,
    store_name text NOT NULL,
    country text NOT NULL,
    city text NOT NULL
);


ALTER TABLE public.stores OWNER TO postgres;

--
-- Name: stores_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.stores ALTER COLUMN store_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.stores_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    supplier_id uuid DEFAULT gen_random_uuid() NOT NULL,
    supplier_name text NOT NULL,
    contact_email public.citext,
    contact_phone text,
    country text,
    status text DEFAULT 'ACTIVE'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Name: pos_sale_lines; Type: TABLE; Schema: retail; Owner: postgres
--

CREATE TABLE retail.pos_sale_lines (
    sale_line_id uuid DEFAULT gen_random_uuid() NOT NULL,
    pos_sale_id uuid NOT NULL,
    card_id uuid NOT NULL,
    stock_item_id uuid,
    qty integer NOT NULL,
    unit_price numeric(12,2) NOT NULL,
    discount_amount numeric(12,2) DEFAULT 0 NOT NULL,
    line_total numeric(12,2) NOT NULL,
    CONSTRAINT pos_sale_lines_qty_check CHECK ((qty > 0))
);


ALTER TABLE retail.pos_sale_lines OWNER TO postgres;

--
-- Name: pos_sales; Type: TABLE; Schema: retail; Owner: postgres
--

CREATE TABLE retail.pos_sales (
    pos_sale_id uuid DEFAULT gen_random_uuid() NOT NULL,
    store_id bigint NOT NULL,
    ticket_number text NOT NULL,
    cashier_user_ref uuid,
    customer_ref uuid,
    total_amount numeric(12,2) NOT NULL,
    currency text DEFAULT 'EUR'::text NOT NULL,
    payment_method text NOT NULL,
    sale_time timestamp with time zone DEFAULT now() NOT NULL,
    status text DEFAULT 'COMPLETED'::text NOT NULL
);


ALTER TABLE retail.pos_sales OWNER TO postgres;

--
-- Name: barcode_mappings; Type: TABLE; Schema: warehouse; Owner: postgres
--

CREATE TABLE warehouse.barcode_mappings (
    barcode_id uuid DEFAULT gen_random_uuid() NOT NULL,
    stock_item_id uuid NOT NULL,
    barcode_value text NOT NULL,
    barcode_type text DEFAULT 'EAN13'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE warehouse.barcode_mappings OWNER TO postgres;

--
-- Name: grading_entries; Type: TABLE; Schema: warehouse; Owner: postgres
--

CREATE TABLE warehouse.grading_entries (
    grading_id uuid DEFAULT gen_random_uuid() NOT NULL,
    stock_item_id uuid NOT NULL,
    grading_provider text NOT NULL,
    grading_reference text,
    grade_value text,
    status text DEFAULT 'PENDING'::text NOT NULL,
    submitted_at timestamp with time zone,
    graded_at timestamp with time zone
);


ALTER TABLE warehouse.grading_entries OWNER TO postgres;

--
-- Name: shelf_locations; Type: TABLE; Schema: warehouse; Owner: postgres
--

CREATE TABLE warehouse.shelf_locations (
    shelf_location_id uuid DEFAULT gen_random_uuid() NOT NULL,
    store_id bigint NOT NULL,
    zone_code text NOT NULL,
    aisle_code text,
    shelf_code text,
    bin_code text,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE warehouse.shelf_locations OWNER TO postgres;

--
-- Name: stock_items; Type: TABLE; Schema: warehouse; Owner: postgres
--

CREATE TABLE warehouse.stock_items (
    stock_item_id uuid DEFAULT gen_random_uuid() NOT NULL,
    store_id bigint NOT NULL,
    card_id uuid NOT NULL,
    quantity integer DEFAULT 0 NOT NULL,
    reserved_qty integer DEFAULT 0 NOT NULL,
    sale_price numeric(12,2) NOT NULL,
    condition text,
    foil boolean DEFAULT false NOT NULL
);


ALTER TABLE warehouse.stock_items OWNER TO postgres;

--
-- Name: stock_movements; Type: TABLE; Schema: warehouse; Owner: postgres
--

CREATE TABLE warehouse.stock_movements (
    movement_id uuid DEFAULT gen_random_uuid() NOT NULL,
    stock_item_id uuid NOT NULL,
    movement_type text NOT NULL,
    qty integer NOT NULL,
    source_ref text,
    source_type text,
    notes text,
    created_by text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE warehouse.stock_movements OWNER TO postgres;

--
-- Name: stock_reservations; Type: TABLE; Schema: warehouse; Owner: postgres
--

CREATE TABLE warehouse.stock_reservations (
    reservation_id uuid DEFAULT gen_random_uuid() NOT NULL,
    stock_item_id uuid NOT NULL,
    reservation_source text NOT NULL,
    reservation_ref text,
    qty_reserved integer NOT NULL,
    status text DEFAULT 'ACTIVE'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone,
    CONSTRAINT stock_reservations_qty_reserved_check CHECK ((qty_reserved > 0))
);


ALTER TABLE warehouse.stock_reservations OWNER TO postgres;

--
-- Name: inventory_adjustments inventory_adjustments_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.inventory_adjustments
    ADD CONSTRAINT inventory_adjustments_pkey PRIMARY KEY (adjustment_id);


--
-- Name: purchase_order_lines purchase_order_lines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order_lines
    ADD CONSTRAINT purchase_order_lines_pkey PRIMARY KEY (po_line_id);


--
-- Name: purchase_orders purchase_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_pkey PRIMARY KEY (po_id);


--
-- Name: purchase_orders purchase_orders_po_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_po_number_key UNIQUE (po_number);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (store_id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);


--
-- Name: pos_sale_lines pos_sale_lines_pkey; Type: CONSTRAINT; Schema: retail; Owner: postgres
--

ALTER TABLE ONLY retail.pos_sale_lines
    ADD CONSTRAINT pos_sale_lines_pkey PRIMARY KEY (sale_line_id);


--
-- Name: pos_sales pos_sales_pkey; Type: CONSTRAINT; Schema: retail; Owner: postgres
--

ALTER TABLE ONLY retail.pos_sales
    ADD CONSTRAINT pos_sales_pkey PRIMARY KEY (pos_sale_id);


--
-- Name: pos_sales pos_sales_ticket_number_key; Type: CONSTRAINT; Schema: retail; Owner: postgres
--

ALTER TABLE ONLY retail.pos_sales
    ADD CONSTRAINT pos_sales_ticket_number_key UNIQUE (ticket_number);


--
-- Name: barcode_mappings barcode_mappings_barcode_value_key; Type: CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.barcode_mappings
    ADD CONSTRAINT barcode_mappings_barcode_value_key UNIQUE (barcode_value);


--
-- Name: barcode_mappings barcode_mappings_pkey; Type: CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.barcode_mappings
    ADD CONSTRAINT barcode_mappings_pkey PRIMARY KEY (barcode_id);


--
-- Name: grading_entries grading_entries_pkey; Type: CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.grading_entries
    ADD CONSTRAINT grading_entries_pkey PRIMARY KEY (grading_id);


--
-- Name: shelf_locations shelf_locations_pkey; Type: CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.shelf_locations
    ADD CONSTRAINT shelf_locations_pkey PRIMARY KEY (shelf_location_id);


--
-- Name: stock_items stock_items_pkey; Type: CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.stock_items
    ADD CONSTRAINT stock_items_pkey PRIMARY KEY (stock_item_id);


--
-- Name: stock_movements stock_movements_pkey; Type: CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.stock_movements
    ADD CONSTRAINT stock_movements_pkey PRIMARY KEY (movement_id);


--
-- Name: stock_reservations stock_reservations_pkey; Type: CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.stock_reservations
    ADD CONSTRAINT stock_reservations_pkey PRIMARY KEY (reservation_id);


--
-- Name: idx_po_lines_po; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_po_lines_po ON public.purchase_order_lines USING btree (po_id);


--
-- Name: idx_pos_sales_store; Type: INDEX; Schema: retail; Owner: postgres
--

CREATE INDEX idx_pos_sales_store ON retail.pos_sales USING btree (store_id);


--
-- Name: idx_stock_items_card; Type: INDEX; Schema: warehouse; Owner: postgres
--

CREATE INDEX idx_stock_items_card ON warehouse.stock_items USING btree (card_id);


--
-- Name: idx_stock_items_store; Type: INDEX; Schema: warehouse; Owner: postgres
--

CREATE INDEX idx_stock_items_store ON warehouse.stock_items USING btree (store_id);


--
-- Name: idx_stock_movements_item; Type: INDEX; Schema: warehouse; Owner: postgres
--

CREATE INDEX idx_stock_movements_item ON warehouse.stock_movements USING btree (stock_item_id);


--
-- Name: idx_stock_reservations_item; Type: INDEX; Schema: warehouse; Owner: postgres
--

CREATE INDEX idx_stock_reservations_item ON warehouse.stock_reservations USING btree (stock_item_id);


--
-- Name: inventory_adjustments inventory_adjustments_stock_item_id_fkey; Type: FK CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.inventory_adjustments
    ADD CONSTRAINT inventory_adjustments_stock_item_id_fkey FOREIGN KEY (stock_item_id) REFERENCES warehouse.stock_items(stock_item_id) ON DELETE CASCADE;


--
-- Name: purchase_order_lines purchase_order_lines_po_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order_lines
    ADD CONSTRAINT purchase_order_lines_po_id_fkey FOREIGN KEY (po_id) REFERENCES public.purchase_orders(po_id) ON DELETE CASCADE;


--
-- Name: purchase_orders purchase_orders_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(supplier_id);


--
-- Name: pos_sale_lines pos_sale_lines_pos_sale_id_fkey; Type: FK CONSTRAINT; Schema: retail; Owner: postgres
--

ALTER TABLE ONLY retail.pos_sale_lines
    ADD CONSTRAINT pos_sale_lines_pos_sale_id_fkey FOREIGN KEY (pos_sale_id) REFERENCES retail.pos_sales(pos_sale_id) ON DELETE CASCADE;


--
-- Name: pos_sale_lines pos_sale_lines_stock_item_id_fkey; Type: FK CONSTRAINT; Schema: retail; Owner: postgres
--

ALTER TABLE ONLY retail.pos_sale_lines
    ADD CONSTRAINT pos_sale_lines_stock_item_id_fkey FOREIGN KEY (stock_item_id) REFERENCES warehouse.stock_items(stock_item_id);


--
-- Name: pos_sales pos_sales_store_id_fkey; Type: FK CONSTRAINT; Schema: retail; Owner: postgres
--

ALTER TABLE ONLY retail.pos_sales
    ADD CONSTRAINT pos_sales_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(store_id);


--
-- Name: barcode_mappings barcode_mappings_stock_item_id_fkey; Type: FK CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.barcode_mappings
    ADD CONSTRAINT barcode_mappings_stock_item_id_fkey FOREIGN KEY (stock_item_id) REFERENCES warehouse.stock_items(stock_item_id) ON DELETE CASCADE;


--
-- Name: grading_entries grading_entries_stock_item_id_fkey; Type: FK CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.grading_entries
    ADD CONSTRAINT grading_entries_stock_item_id_fkey FOREIGN KEY (stock_item_id) REFERENCES warehouse.stock_items(stock_item_id) ON DELETE CASCADE;


--
-- Name: shelf_locations shelf_locations_store_id_fkey; Type: FK CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.shelf_locations
    ADD CONSTRAINT shelf_locations_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(store_id);


--
-- Name: stock_items stock_items_store_id_fkey; Type: FK CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.stock_items
    ADD CONSTRAINT stock_items_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(store_id);


--
-- Name: stock_movements stock_movements_stock_item_id_fkey; Type: FK CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.stock_movements
    ADD CONSTRAINT stock_movements_stock_item_id_fkey FOREIGN KEY (stock_item_id) REFERENCES warehouse.stock_items(stock_item_id) ON DELETE CASCADE;


--
-- Name: stock_reservations stock_reservations_stock_item_id_fkey; Type: FK CONSTRAINT; Schema: warehouse; Owner: postgres
--

ALTER TABLE ONLY warehouse.stock_reservations
    ADD CONSTRAINT stock_reservations_stock_item_id_fkey FOREIGN KEY (stock_item_id) REFERENCES warehouse.stock_items(stock_item_id) ON DELETE CASCADE;


--
-- Name: DATABASE wom_inventory; Type: ACL; Schema: -; Owner: wom_inventory
--

REVOKE CONNECT,TEMPORARY ON DATABASE wom_inventory FROM PUBLIC;
GRANT CONNECT ON DATABASE wom_inventory TO readonly_audit;


--
-- Name: SCHEMA audit; Type: ACL; Schema: -; Owner: wom_inventory
--

GRANT USAGE ON SCHEMA audit TO readonly_audit;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO wom_inventory;
GRANT USAGE ON SCHEMA public TO readonly_audit;


--
-- Name: SCHEMA retail; Type: ACL; Schema: -; Owner: wom_inventory
--

GRANT USAGE ON SCHEMA retail TO readonly_audit;


--
-- Name: SCHEMA warehouse; Type: ACL; Schema: -; Owner: wom_inventory
--

GRANT USAGE ON SCHEMA warehouse TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: audit; Owner: wom_inventory
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_inventory IN SCHEMA audit GRANT SELECT ON TABLES TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: wom_inventory
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_inventory IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_inventory;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: retail; Owner: wom_inventory
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_inventory IN SCHEMA retail GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_inventory;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: warehouse; Owner: wom_inventory
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_inventory IN SCHEMA warehouse GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_inventory;


--
-- PostgreSQL database dump complete
--

\unrestrict qwNnfgnLj8k5XPyeJeRhPK3mcwYx8s7g8sdxov7bvLWsPKmfGWQIOGmCB9ttUyH

--
-- Database "wom_marketplace" dump
--

--
-- PostgreSQL database dump
--

\restrict V1vjf1sYQih7VYy6RRuzFiSI3tSIdD1iZULowZa8tjEqwMM0XLUV3fWJZVGPTS2

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_marketplace; Type: DATABASE; Schema: -; Owner: wom_marketplace
--

CREATE DATABASE wom_marketplace WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_marketplace OWNER TO wom_marketplace;

\unrestrict V1vjf1sYQih7VYy6RRuzFiSI3tSIdD1iZULowZa8tjEqwMM0XLUV3fWJZVGPTS2
\connect wom_marketplace
\restrict V1vjf1sYQih7VYy6RRuzFiSI3tSIdD1iZULowZa8tjEqwMM0XLUV3fWJZVGPTS2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_marketplace; Type: DATABASE PROPERTIES; Schema: -; Owner: wom_marketplace
--

ALTER ROLE wom_marketplace IN DATABASE wom_marketplace SET search_path TO 'public', 'checkout', 'shipping', 'disputes', 'audit';


\unrestrict V1vjf1sYQih7VYy6RRuzFiSI3tSIdD1iZULowZa8tjEqwMM0XLUV3fWJZVGPTS2
\connect wom_marketplace
\restrict V1vjf1sYQih7VYy6RRuzFiSI3tSIdD1iZULowZa8tjEqwMM0XLUV3fWJZVGPTS2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: audit; Type: SCHEMA; Schema: -; Owner: wom_marketplace
--

CREATE SCHEMA audit;


ALTER SCHEMA audit OWNER TO wom_marketplace;

--
-- Name: checkout; Type: SCHEMA; Schema: -; Owner: wom_marketplace
--

CREATE SCHEMA checkout;


ALTER SCHEMA checkout OWNER TO wom_marketplace;

--
-- Name: disputes; Type: SCHEMA; Schema: -; Owner: wom_marketplace
--

CREATE SCHEMA disputes;


ALTER SCHEMA disputes OWNER TO wom_marketplace;

--
-- Name: shipping; Type: SCHEMA; Schema: -; Owner: wom_marketplace
--

CREATE SCHEMA shipping;


ALTER SCHEMA shipping OWNER TO wom_marketplace;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: marketplace_events; Type: TABLE; Schema: audit; Owner: postgres
--

CREATE TABLE audit.marketplace_events (
    event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    entity_type text NOT NULL,
    entity_id uuid NOT NULL,
    event_type text NOT NULL,
    actor_ref text,
    event_payload jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE audit.marketplace_events OWNER TO postgres;

--
-- Name: cart_items; Type: TABLE; Schema: checkout; Owner: postgres
--

CREATE TABLE checkout.cart_items (
    cart_item_id uuid DEFAULT gen_random_uuid() NOT NULL,
    cart_id uuid NOT NULL,
    listing_id uuid NOT NULL,
    quantity integer NOT NULL,
    added_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT cart_items_quantity_check CHECK ((quantity > 0))
);


ALTER TABLE checkout.cart_items OWNER TO postgres;

--
-- Name: carts; Type: TABLE; Schema: checkout; Owner: postgres
--

CREATE TABLE checkout.carts (
    cart_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    status text DEFAULT 'OPEN'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE checkout.carts OWNER TO postgres;

--
-- Name: payments; Type: TABLE; Schema: checkout; Owner: postgres
--

CREATE TABLE checkout.payments (
    payment_id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    provider text NOT NULL,
    provider_reference text,
    payment_status text NOT NULL,
    amount numeric(12,2) NOT NULL,
    currency text DEFAULT 'EUR'::text NOT NULL,
    paid_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE checkout.payments OWNER TO postgres;

--
-- Name: refunds; Type: TABLE; Schema: checkout; Owner: postgres
--

CREATE TABLE checkout.refunds (
    refund_id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    payment_id uuid,
    amount numeric(12,2) NOT NULL,
    refund_reason text,
    refund_status text NOT NULL,
    refunded_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE checkout.refunds OWNER TO postgres;

--
-- Name: disputes; Type: TABLE; Schema: disputes; Owner: postgres
--

CREATE TABLE disputes.disputes (
    dispute_id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    dispute_type text NOT NULL,
    status text DEFAULT 'OPEN'::text NOT NULL,
    opened_by text,
    opened_at timestamp with time zone DEFAULT now() NOT NULL,
    resolved_at timestamp with time zone,
    resolution_notes text
);


ALTER TABLE disputes.disputes OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id uuid DEFAULT gen_random_uuid() NOT NULL,
    email public.citext NOT NULL,
    display_name text NOT NULL,
    region text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: listings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listings (
    listing_id uuid DEFAULT gen_random_uuid() NOT NULL,
    seller_id uuid NOT NULL,
    card_id uuid NOT NULL,
    stock_item_ref uuid,
    condition text NOT NULL,
    language_code text,
    foil boolean DEFAULT false NOT NULL,
    quantity integer NOT NULL,
    price numeric(12,2) NOT NULL,
    currency text DEFAULT 'EUR'::text NOT NULL,
    listing_status text DEFAULT 'ACTIVE'::text NOT NULL,
    published_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT listings_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.listings OWNER TO postgres;

--
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_item_id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    listing_id uuid NOT NULL,
    seller_id uuid NOT NULL,
    card_id uuid NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(12,2) NOT NULL,
    line_total numeric(12,2) NOT NULL,
    CONSTRAINT order_items_quantity_check CHECK ((quantity > 0))
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    order_date timestamp with time zone DEFAULT now() NOT NULL,
    status text NOT NULL,
    total_amount numeric(12,2) NOT NULL,
    currency text NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    review_id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    seller_id uuid NOT NULL,
    order_id uuid,
    rating integer NOT NULL,
    review_text text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT reviews_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    seller_id uuid DEFAULT gen_random_uuid() NOT NULL,
    auth_user_id uuid,
    display_name text NOT NULL,
    country text,
    region text,
    seller_status text DEFAULT 'ACTIVE'::text NOT NULL,
    reputation_score numeric(5,2),
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- Name: shipments; Type: TABLE; Schema: shipping; Owner: postgres
--

CREATE TABLE shipping.shipments (
    shipment_id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    carrier text NOT NULL,
    tracking_number text,
    shipment_status text NOT NULL,
    shipped_at timestamp with time zone,
    delivered_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE shipping.shipments OWNER TO postgres;

--
-- Name: tracking_events; Type: TABLE; Schema: shipping; Owner: postgres
--

CREATE TABLE shipping.tracking_events (
    tracking_event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    shipment_id uuid NOT NULL,
    event_type text NOT NULL,
    location_text text,
    event_time timestamp with time zone NOT NULL,
    provider_payload jsonb
);


ALTER TABLE shipping.tracking_events OWNER TO postgres;

--
-- Name: marketplace_events marketplace_events_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY audit.marketplace_events
    ADD CONSTRAINT marketplace_events_pkey PRIMARY KEY (event_id);


--
-- Name: cart_items cart_items_cart_id_listing_id_key; Type: CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.cart_items
    ADD CONSTRAINT cart_items_cart_id_listing_id_key UNIQUE (cart_id, listing_id);


--
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (cart_item_id);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (cart_id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);


--
-- Name: refunds refunds_pkey; Type: CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.refunds
    ADD CONSTRAINT refunds_pkey PRIMARY KEY (refund_id);


--
-- Name: disputes disputes_pkey; Type: CONSTRAINT; Schema: disputes; Owner: postgres
--

ALTER TABLE ONLY disputes.disputes
    ADD CONSTRAINT disputes_pkey PRIMARY KEY (dispute_id);


--
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: listings listings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_pkey PRIMARY KEY (listing_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (seller_id);


--
-- Name: shipments shipments_pkey; Type: CONSTRAINT; Schema: shipping; Owner: postgres
--

ALTER TABLE ONLY shipping.shipments
    ADD CONSTRAINT shipments_pkey PRIMARY KEY (shipment_id);


--
-- Name: tracking_events tracking_events_pkey; Type: CONSTRAINT; Schema: shipping; Owner: postgres
--

ALTER TABLE ONLY shipping.tracking_events
    ADD CONSTRAINT tracking_events_pkey PRIMARY KEY (tracking_event_id);


--
-- Name: idx_listings_card; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_listings_card ON public.listings USING btree (card_id);


--
-- Name: idx_listings_seller; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_listings_seller ON public.listings USING btree (seller_id);


--
-- Name: idx_order_items_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_order_items_order ON public.order_items USING btree (order_id);


--
-- Name: idx_orders_customer; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_orders_customer ON public.orders USING btree (customer_id);


--
-- Name: idx_reviews_seller; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_reviews_seller ON public.reviews USING btree (seller_id);


--
-- Name: idx_shipments_order; Type: INDEX; Schema: shipping; Owner: postgres
--

CREATE INDEX idx_shipments_order ON shipping.shipments USING btree (order_id);


--
-- Name: cart_items cart_items_cart_id_fkey; Type: FK CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.cart_items
    ADD CONSTRAINT cart_items_cart_id_fkey FOREIGN KEY (cart_id) REFERENCES checkout.carts(cart_id) ON DELETE CASCADE;


--
-- Name: cart_items cart_items_listing_id_fkey; Type: FK CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.cart_items
    ADD CONSTRAINT cart_items_listing_id_fkey FOREIGN KEY (listing_id) REFERENCES public.listings(listing_id);


--
-- Name: carts carts_customer_id_fkey; Type: FK CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.carts
    ADD CONSTRAINT carts_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: payments payments_order_id_fkey; Type: FK CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- Name: refunds refunds_order_id_fkey; Type: FK CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.refunds
    ADD CONSTRAINT refunds_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- Name: refunds refunds_payment_id_fkey; Type: FK CONSTRAINT; Schema: checkout; Owner: postgres
--

ALTER TABLE ONLY checkout.refunds
    ADD CONSTRAINT refunds_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES checkout.payments(payment_id);


--
-- Name: disputes disputes_order_id_fkey; Type: FK CONSTRAINT; Schema: disputes; Owner: postgres
--

ALTER TABLE ONLY disputes.disputes
    ADD CONSTRAINT disputes_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- Name: listings listings_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.sellers(seller_id);


--
-- Name: order_items order_items_listing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_listing_id_fkey FOREIGN KEY (listing_id) REFERENCES public.listings(listing_id);


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- Name: order_items order_items_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.sellers(seller_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: reviews reviews_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: reviews reviews_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- Name: reviews reviews_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.sellers(seller_id);


--
-- Name: shipments shipments_order_id_fkey; Type: FK CONSTRAINT; Schema: shipping; Owner: postgres
--

ALTER TABLE ONLY shipping.shipments
    ADD CONSTRAINT shipments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON DELETE CASCADE;


--
-- Name: tracking_events tracking_events_shipment_id_fkey; Type: FK CONSTRAINT; Schema: shipping; Owner: postgres
--

ALTER TABLE ONLY shipping.tracking_events
    ADD CONSTRAINT tracking_events_shipment_id_fkey FOREIGN KEY (shipment_id) REFERENCES shipping.shipments(shipment_id) ON DELETE CASCADE;


--
-- Name: DATABASE wom_marketplace; Type: ACL; Schema: -; Owner: wom_marketplace
--

REVOKE CONNECT,TEMPORARY ON DATABASE wom_marketplace FROM PUBLIC;
GRANT CONNECT ON DATABASE wom_marketplace TO readonly_audit;


--
-- Name: SCHEMA audit; Type: ACL; Schema: -; Owner: wom_marketplace
--

GRANT USAGE ON SCHEMA audit TO readonly_audit;


--
-- Name: SCHEMA checkout; Type: ACL; Schema: -; Owner: wom_marketplace
--

GRANT USAGE ON SCHEMA checkout TO readonly_audit;


--
-- Name: SCHEMA disputes; Type: ACL; Schema: -; Owner: wom_marketplace
--

GRANT USAGE ON SCHEMA disputes TO readonly_audit;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO wom_marketplace;
GRANT USAGE ON SCHEMA public TO readonly_audit;


--
-- Name: SCHEMA shipping; Type: ACL; Schema: -; Owner: wom_marketplace
--

GRANT USAGE ON SCHEMA shipping TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: audit; Owner: wom_marketplace
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_marketplace IN SCHEMA audit GRANT SELECT ON TABLES TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: checkout; Owner: wom_marketplace
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_marketplace IN SCHEMA checkout GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_marketplace;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: wom_marketplace
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_marketplace IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_marketplace;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: shipping; Owner: wom_marketplace
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_marketplace IN SCHEMA shipping GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_marketplace;


--
-- PostgreSQL database dump complete
--

\unrestrict V1vjf1sYQih7VYy6RRuzFiSI3tSIdD1iZULowZa8tjEqwMM0XLUV3fWJZVGPTS2

--
-- Database "wom_notifications" dump
--

--
-- PostgreSQL database dump
--

\restrict kl7zB2slkQo3hDsxP55hDDeyoXCBXJrxTOGo1xDylKwAXPddhAFPDMcZiv3fPho

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_notifications; Type: DATABASE; Schema: -; Owner: wom_notify
--

CREATE DATABASE wom_notifications WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_notifications OWNER TO wom_notify;

\unrestrict kl7zB2slkQo3hDsxP55hDDeyoXCBXJrxTOGo1xDylKwAXPddhAFPDMcZiv3fPho
\connect wom_notifications
\restrict kl7zB2slkQo3hDsxP55hDDeyoXCBXJrxTOGo1xDylKwAXPddhAFPDMcZiv3fPho

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_notifications; Type: DATABASE PROPERTIES; Schema: -; Owner: wom_notify
--

ALTER ROLE wom_notify IN DATABASE wom_notifications SET search_path TO 'public', 'templates', 'delivery', 'campaigns';


\unrestrict kl7zB2slkQo3hDsxP55hDDeyoXCBXJrxTOGo1xDylKwAXPddhAFPDMcZiv3fPho
\connect wom_notifications
\restrict kl7zB2slkQo3hDsxP55hDDeyoXCBXJrxTOGo1xDylKwAXPddhAFPDMcZiv3fPho

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: campaigns; Type: SCHEMA; Schema: -; Owner: wom_notify
--

CREATE SCHEMA campaigns;


ALTER SCHEMA campaigns OWNER TO wom_notify;

--
-- Name: delivery; Type: SCHEMA; Schema: -; Owner: wom_notify
--

CREATE SCHEMA delivery;


ALTER SCHEMA delivery OWNER TO wom_notify;

--
-- Name: templates; Type: SCHEMA; Schema: -; Owner: wom_notify
--

CREATE SCHEMA templates;


ALTER SCHEMA templates OWNER TO wom_notify;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: notification_campaigns; Type: TABLE; Schema: campaigns; Owner: postgres
--

CREATE TABLE campaigns.notification_campaigns (
    campaign_id uuid DEFAULT gen_random_uuid() NOT NULL,
    campaign_name text NOT NULL,
    channel text NOT NULL,
    status text DEFAULT 'DRAFT'::text NOT NULL,
    scheduled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE campaigns.notification_campaigns OWNER TO postgres;

--
-- Name: delivery_events; Type: TABLE; Schema: delivery; Owner: postgres
--

CREATE TABLE delivery.delivery_events (
    delivery_event_id uuid DEFAULT gen_random_uuid() NOT NULL,
    message_id uuid NOT NULL,
    provider_name text,
    provider_reference text,
    event_type text NOT NULL,
    event_time timestamp with time zone DEFAULT now() NOT NULL,
    provider_payload jsonb
);


ALTER TABLE delivery.delivery_events OWNER TO postgres;

--
-- Name: notification_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification_messages (
    message_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    template_id uuid,
    campaign_id uuid,
    channel text NOT NULL,
    message_status text DEFAULT 'PENDING'::text NOT NULL,
    payload jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    sent_at timestamp with time zone
);


ALTER TABLE public.notification_messages OWNER TO postgres;

--
-- Name: notification_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification_preferences (
    preference_id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    email_enabled boolean DEFAULT true NOT NULL,
    push_enabled boolean DEFAULT true NOT NULL,
    sms_enabled boolean DEFAULT false NOT NULL,
    marketplace_alerts boolean DEFAULT true NOT NULL,
    deck_alerts boolean DEFAULT true NOT NULL,
    pricing_alerts boolean DEFAULT true NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.notification_preferences OWNER TO postgres;

--
-- Name: notification_templates; Type: TABLE; Schema: templates; Owner: postgres
--

CREATE TABLE templates.notification_templates (
    template_id uuid DEFAULT gen_random_uuid() NOT NULL,
    template_name text NOT NULL,
    channel text NOT NULL,
    locale_code text NOT NULL,
    template_version text NOT NULL,
    subject_template text,
    body_template text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE templates.notification_templates OWNER TO postgres;

--
-- Name: notification_campaigns notification_campaigns_pkey; Type: CONSTRAINT; Schema: campaigns; Owner: postgres
--

ALTER TABLE ONLY campaigns.notification_campaigns
    ADD CONSTRAINT notification_campaigns_pkey PRIMARY KEY (campaign_id);


--
-- Name: delivery_events delivery_events_pkey; Type: CONSTRAINT; Schema: delivery; Owner: postgres
--

ALTER TABLE ONLY delivery.delivery_events
    ADD CONSTRAINT delivery_events_pkey PRIMARY KEY (delivery_event_id);


--
-- Name: notification_messages notification_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_messages
    ADD CONSTRAINT notification_messages_pkey PRIMARY KEY (message_id);


--
-- Name: notification_preferences notification_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_preferences
    ADD CONSTRAINT notification_preferences_pkey PRIMARY KEY (preference_id);


--
-- Name: notification_preferences notification_preferences_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_preferences
    ADD CONSTRAINT notification_preferences_user_id_key UNIQUE (user_id);


--
-- Name: notification_templates notification_templates_pkey; Type: CONSTRAINT; Schema: templates; Owner: postgres
--

ALTER TABLE ONLY templates.notification_templates
    ADD CONSTRAINT notification_templates_pkey PRIMARY KEY (template_id);


--
-- Name: notification_templates notification_templates_template_name_channel_locale_code_te_key; Type: CONSTRAINT; Schema: templates; Owner: postgres
--

ALTER TABLE ONLY templates.notification_templates
    ADD CONSTRAINT notification_templates_template_name_channel_locale_code_te_key UNIQUE (template_name, channel, locale_code, template_version);


--
-- Name: idx_delivery_events_message; Type: INDEX; Schema: delivery; Owner: postgres
--

CREATE INDEX idx_delivery_events_message ON delivery.delivery_events USING btree (message_id);


--
-- Name: idx_notification_messages_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_notification_messages_user ON public.notification_messages USING btree (user_id);


--
-- Name: delivery_events delivery_events_message_id_fkey; Type: FK CONSTRAINT; Schema: delivery; Owner: postgres
--

ALTER TABLE ONLY delivery.delivery_events
    ADD CONSTRAINT delivery_events_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.notification_messages(message_id) ON DELETE CASCADE;


--
-- Name: notification_messages notification_messages_campaign_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_messages
    ADD CONSTRAINT notification_messages_campaign_id_fkey FOREIGN KEY (campaign_id) REFERENCES campaigns.notification_campaigns(campaign_id);


--
-- Name: notification_messages notification_messages_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_messages
    ADD CONSTRAINT notification_messages_template_id_fkey FOREIGN KEY (template_id) REFERENCES templates.notification_templates(template_id);


--
-- Name: DATABASE wom_notifications; Type: ACL; Schema: -; Owner: wom_notify
--

REVOKE CONNECT,TEMPORARY ON DATABASE wom_notifications FROM PUBLIC;
GRANT CONNECT ON DATABASE wom_notifications TO readonly_audit;


--
-- Name: SCHEMA campaigns; Type: ACL; Schema: -; Owner: wom_notify
--

GRANT USAGE ON SCHEMA campaigns TO readonly_audit;


--
-- Name: SCHEMA delivery; Type: ACL; Schema: -; Owner: wom_notify
--

GRANT USAGE ON SCHEMA delivery TO readonly_audit;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO wom_notify;
GRANT USAGE ON SCHEMA public TO readonly_audit;


--
-- Name: SCHEMA templates; Type: ACL; Schema: -; Owner: wom_notify
--

GRANT USAGE ON SCHEMA templates TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: delivery; Owner: wom_notify
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_notify IN SCHEMA delivery GRANT SELECT ON TABLES TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: wom_notify
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_notify IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_notify;


--
-- PostgreSQL database dump complete
--

\unrestrict kl7zB2slkQo3hDsxP55hDDeyoXCBXJrxTOGo1xDylKwAXPddhAFPDMcZiv3fPho

--
-- Database "wom_reporting" dump
--

--
-- PostgreSQL database dump
--

\restrict b6hZrfibdodBf8Lldohx1aN1nsYYaV88NMBLoG8NgcHQv6m01bKshAoeb7prAdh

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_reporting; Type: DATABASE; Schema: -; Owner: wom_reporting
--

CREATE DATABASE wom_reporting WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE wom_reporting OWNER TO wom_reporting;

\unrestrict b6hZrfibdodBf8Lldohx1aN1nsYYaV88NMBLoG8NgcHQv6m01bKshAoeb7prAdh
\connect wom_reporting
\restrict b6hZrfibdodBf8Lldohx1aN1nsYYaV88NMBLoG8NgcHQv6m01bKshAoeb7prAdh

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: wom_reporting; Type: DATABASE PROPERTIES; Schema: -; Owner: wom_reporting
--

ALTER ROLE wom_reporting IN DATABASE wom_reporting SET search_path TO 'mart', 'stage', 'public';


\unrestrict b6hZrfibdodBf8Lldohx1aN1nsYYaV88NMBLoG8NgcHQv6m01bKshAoeb7prAdh
\connect wom_reporting
\restrict b6hZrfibdodBf8Lldohx1aN1nsYYaV88NMBLoG8NgcHQv6m01bKshAoeb7prAdh

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: mart; Type: SCHEMA; Schema: -; Owner: wom_reporting
--

CREATE SCHEMA mart;


ALTER SCHEMA mart OWNER TO wom_reporting;

--
-- Name: stage; Type: SCHEMA; Schema: -; Owner: wom_reporting
--

CREATE SCHEMA stage;


ALTER SCHEMA stage OWNER TO wom_reporting;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dim_card; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.dim_card (
    card_id uuid NOT NULL,
    card_name text NOT NULL,
    edition_code text,
    rarity_name text,
    game_code text
);


ALTER TABLE mart.dim_card OWNER TO postgres;

--
-- Name: dim_customer; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.dim_customer (
    customer_id uuid NOT NULL,
    region text,
    segment_name text
);


ALTER TABLE mart.dim_customer OWNER TO postgres;

--
-- Name: dim_date; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.dim_date (
    date_id integer NOT NULL,
    full_date date NOT NULL,
    year_num integer NOT NULL,
    quarter_num integer NOT NULL,
    month_num integer NOT NULL,
    day_num integer NOT NULL
);


ALTER TABLE mart.dim_date OWNER TO postgres;

--
-- Name: dim_store; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.dim_store (
    store_id bigint NOT NULL,
    store_name text NOT NULL,
    city text,
    country text
);


ALTER TABLE mart.dim_store OWNER TO postgres;

--
-- Name: dim_user; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.dim_user (
    user_id uuid NOT NULL,
    region_code text,
    auth_type text
);


ALTER TABLE mart.dim_user OWNER TO postgres;

--
-- Name: fact_auth_activity; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.fact_auth_activity (
    auth_fact_id uuid DEFAULT gen_random_uuid() NOT NULL,
    date_id integer NOT NULL,
    user_id uuid,
    login_count integer DEFAULT 0 NOT NULL,
    mfa_count integer DEFAULT 0 NOT NULL,
    failed_login_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE mart.fact_auth_activity OWNER TO postgres;

--
-- Name: fact_marketplace_orders; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.fact_marketplace_orders (
    order_fact_id uuid DEFAULT gen_random_uuid() NOT NULL,
    date_id integer NOT NULL,
    customer_id uuid,
    card_id uuid,
    quantity integer NOT NULL,
    total_amount numeric(12,2) NOT NULL,
    shipping_amount numeric(12,2) DEFAULT 0 NOT NULL
);


ALTER TABLE mart.fact_marketplace_orders OWNER TO postgres;

--
-- Name: fact_sales; Type: TABLE; Schema: mart; Owner: postgres
--

CREATE TABLE mart.fact_sales (
    sale_fact_id uuid DEFAULT gen_random_uuid() NOT NULL,
    date_id integer NOT NULL,
    store_id bigint,
    card_id uuid,
    customer_id uuid,
    quantity integer NOT NULL,
    total_amount numeric(12,2) NOT NULL
);


ALTER TABLE mart.fact_sales OWNER TO postgres;

--
-- Name: etl_runs; Type: TABLE; Schema: stage; Owner: postgres
--

CREATE TABLE stage.etl_runs (
    etl_run_id uuid DEFAULT gen_random_uuid() NOT NULL,
    pipeline_name text NOT NULL,
    status text NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    finished_at timestamp with time zone,
    rows_processed bigint,
    error_message text
);


ALTER TABLE stage.etl_runs OWNER TO postgres;

--
-- Name: dim_card dim_card_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.dim_card
    ADD CONSTRAINT dim_card_pkey PRIMARY KEY (card_id);


--
-- Name: dim_customer dim_customer_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.dim_customer
    ADD CONSTRAINT dim_customer_pkey PRIMARY KEY (customer_id);


--
-- Name: dim_date dim_date_full_date_key; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.dim_date
    ADD CONSTRAINT dim_date_full_date_key UNIQUE (full_date);


--
-- Name: dim_date dim_date_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.dim_date
    ADD CONSTRAINT dim_date_pkey PRIMARY KEY (date_id);


--
-- Name: dim_store dim_store_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.dim_store
    ADD CONSTRAINT dim_store_pkey PRIMARY KEY (store_id);


--
-- Name: dim_user dim_user_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.dim_user
    ADD CONSTRAINT dim_user_pkey PRIMARY KEY (user_id);


--
-- Name: fact_auth_activity fact_auth_activity_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_auth_activity
    ADD CONSTRAINT fact_auth_activity_pkey PRIMARY KEY (auth_fact_id);


--
-- Name: fact_marketplace_orders fact_marketplace_orders_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_marketplace_orders
    ADD CONSTRAINT fact_marketplace_orders_pkey PRIMARY KEY (order_fact_id);


--
-- Name: fact_sales fact_sales_pkey; Type: CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_sales
    ADD CONSTRAINT fact_sales_pkey PRIMARY KEY (sale_fact_id);


--
-- Name: etl_runs etl_runs_pkey; Type: CONSTRAINT; Schema: stage; Owner: postgres
--

ALTER TABLE ONLY stage.etl_runs
    ADD CONSTRAINT etl_runs_pkey PRIMARY KEY (etl_run_id);


--
-- Name: idx_fact_auth_activity_date; Type: INDEX; Schema: mart; Owner: postgres
--

CREATE INDEX idx_fact_auth_activity_date ON mart.fact_auth_activity USING btree (date_id);


--
-- Name: idx_fact_marketplace_orders_date; Type: INDEX; Schema: mart; Owner: postgres
--

CREATE INDEX idx_fact_marketplace_orders_date ON mart.fact_marketplace_orders USING btree (date_id);


--
-- Name: idx_fact_sales_date; Type: INDEX; Schema: mart; Owner: postgres
--

CREATE INDEX idx_fact_sales_date ON mart.fact_sales USING btree (date_id);


--
-- Name: fact_auth_activity fact_auth_activity_date_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_auth_activity
    ADD CONSTRAINT fact_auth_activity_date_id_fkey FOREIGN KEY (date_id) REFERENCES mart.dim_date(date_id);


--
-- Name: fact_auth_activity fact_auth_activity_user_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_auth_activity
    ADD CONSTRAINT fact_auth_activity_user_id_fkey FOREIGN KEY (user_id) REFERENCES mart.dim_user(user_id);


--
-- Name: fact_marketplace_orders fact_marketplace_orders_card_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_marketplace_orders
    ADD CONSTRAINT fact_marketplace_orders_card_id_fkey FOREIGN KEY (card_id) REFERENCES mart.dim_card(card_id);


--
-- Name: fact_marketplace_orders fact_marketplace_orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_marketplace_orders
    ADD CONSTRAINT fact_marketplace_orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES mart.dim_customer(customer_id);


--
-- Name: fact_marketplace_orders fact_marketplace_orders_date_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_marketplace_orders
    ADD CONSTRAINT fact_marketplace_orders_date_id_fkey FOREIGN KEY (date_id) REFERENCES mart.dim_date(date_id);


--
-- Name: fact_sales fact_sales_card_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_sales
    ADD CONSTRAINT fact_sales_card_id_fkey FOREIGN KEY (card_id) REFERENCES mart.dim_card(card_id);


--
-- Name: fact_sales fact_sales_customer_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_sales
    ADD CONSTRAINT fact_sales_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES mart.dim_customer(customer_id);


--
-- Name: fact_sales fact_sales_date_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_sales
    ADD CONSTRAINT fact_sales_date_id_fkey FOREIGN KEY (date_id) REFERENCES mart.dim_date(date_id);


--
-- Name: fact_sales fact_sales_store_id_fkey; Type: FK CONSTRAINT; Schema: mart; Owner: postgres
--

ALTER TABLE ONLY mart.fact_sales
    ADD CONSTRAINT fact_sales_store_id_fkey FOREIGN KEY (store_id) REFERENCES mart.dim_store(store_id);


--
-- Name: DATABASE wom_reporting; Type: ACL; Schema: -; Owner: wom_reporting
--

REVOKE CONNECT,TEMPORARY ON DATABASE wom_reporting FROM PUBLIC;
GRANT CONNECT ON DATABASE wom_reporting TO readonly_audit;


--
-- Name: SCHEMA mart; Type: ACL; Schema: -; Owner: wom_reporting
--

GRANT USAGE ON SCHEMA mart TO readonly_audit;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO wom_reporting;
GRANT USAGE ON SCHEMA public TO readonly_audit;


--
-- Name: SCHEMA stage; Type: ACL; Schema: -; Owner: wom_reporting
--

GRANT USAGE ON SCHEMA stage TO readonly_audit;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: mart; Owner: wom_reporting
--

ALTER DEFAULT PRIVILEGES FOR ROLE wom_reporting IN SCHEMA mart GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO wom_reporting;
ALTER DEFAULT PRIVILEGES FOR ROLE wom_reporting IN SCHEMA mart GRANT SELECT ON TABLES TO readonly_audit;


--
-- PostgreSQL database dump complete
--

\unrestrict b6hZrfibdodBf8Lldohx1aN1nsYYaV88NMBLoG8NgcHQv6m01bKshAoeb7prAdh

--
-- PostgreSQL database cluster dump complete
--

