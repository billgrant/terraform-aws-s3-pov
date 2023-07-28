terraform {
  cloud {
    # Change this to your organization name
    organization = "org-name"

    workspaces {
    # change this to your workspace name
      name = "workspace-name"
    }
  }
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
    test        = "merge-me"
  }
}