terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-918353191280-global-01"
    key    = "918353191280/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}