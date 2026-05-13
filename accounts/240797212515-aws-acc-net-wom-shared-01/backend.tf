terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-240797212515-global-01"
    key    = "240797212515/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}