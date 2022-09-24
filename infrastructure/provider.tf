terraform {
  required_version = ">=1.3.0"
  backend "s3" {
    bucket = "fh-terraform-states"
    key    = "website"
    region = "eu-central-1"
  }
  required_providers {
    archive = {
      source = "hashicorp/archive"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}
