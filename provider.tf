provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "concproject-terraform-state"
    key    = "students/Sambrid/terraform.tfstate"
    region = "ap-south-1"
  }
}