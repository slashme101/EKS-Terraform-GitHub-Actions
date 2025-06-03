terraform {
  required_version = ">= 1.0.10, < 2.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-state-dove123"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    #dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
