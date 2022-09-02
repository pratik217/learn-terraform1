terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  cloud {
    organization = "terraform-cld1"

    workspaces {
      name = "pk-actions-demo1"
    }
  }

  resource "aws_s3_bucket" "b3443" {
  bucket = "my-tf-s3-bucket4"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
}