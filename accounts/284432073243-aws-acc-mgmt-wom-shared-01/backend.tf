terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-284432073243-global-01"
    key    = "284432073243/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}