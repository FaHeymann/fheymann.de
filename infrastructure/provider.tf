terraform {
  required_version = ">=0.12.21"
  backend "s3" {
    bucket = "fh-terraform-states"
    key    = "website"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}
