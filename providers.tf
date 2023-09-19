terraform {
  backend "s3" {
    bucket = var.s3_bucket
    key = var.s3_key
    region = var.region
    dynamodb_table = var.dynamodb_table
    encrypt = var.is_backend_encrypted
  }

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = var.common_tags
  }
}