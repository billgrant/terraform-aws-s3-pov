terraform {
  # cloud {
  #   # Change this to your organization name
  #   organization = "billgrant"

  #   workspaces {
  #   # change this to your workspace name
  #     name = "ravi-cli"
  #   }
  # }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  tags = {
    Name        = var.name
    Environment = var.environment
  }
}