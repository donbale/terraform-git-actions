provider "aws" {
  version = "~> 2.0"
  region  = "eu-central-1"
}

terraform {
    backend "s3" {
    bucket = "terry-the-hairy-turtle"
    key    = "default-infrastructure"
    region = "eu-central-1"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terry-the-hairy-turtle"

  versioning {
    enabled = true
  }
}
