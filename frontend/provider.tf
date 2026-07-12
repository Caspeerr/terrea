terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Separate state file from the ECS module so frontend infra
  # can be applied/destroyed independently
  backend "s3" {
    bucket = "concproject-terraform-state"
    key    = "students/Sambrid/frontend.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = var.region
}
