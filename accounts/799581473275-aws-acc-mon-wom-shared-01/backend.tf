terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-799581473275-global-01"
    key    = "799581473275/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}