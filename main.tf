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
}