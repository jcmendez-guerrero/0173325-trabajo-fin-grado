terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-989735871030-global-01"
    key    = "989735871030/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}