terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-632853425543-global-01"
    key    = "632853425543/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}