terraform {
  required_version = ">=1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.67.0"
      configuration_aliases = [aws.eus2, aws.use1]
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "use1"
}

provider "aws" {
  region = "eu-south-2"
  alias  = "eus2"
}