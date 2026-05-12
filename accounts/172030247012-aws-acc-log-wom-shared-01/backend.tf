terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-172030247012-global-01"
    key    = "172030247012/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}