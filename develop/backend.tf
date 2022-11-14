terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6.0"
    }
  }

  backend "s3" {
    bucket         = "tf-cicd-louis-tfstate"
    key            = "terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }

  required_version = ">= 1.0.11"
}

data "aws_region" "current" {}
data "aws_caller_identity" "current" {}