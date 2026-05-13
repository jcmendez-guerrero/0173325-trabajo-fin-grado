terraform {
  backend "s3" {
    bucket = "aws-wom-s3-terraform-392024306830-global-01"
    key    = "392024306830/state"
    region         = "eu-south-2"
    use_lockfile   = true
    encrypt        = true
  }
}
