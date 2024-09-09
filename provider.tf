terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.65.0"
    } 
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-tf-state-bac"
    key    = "terraform-state/terraform.tfstate"
    region = "ap-south-1"
  }
}


provider "aws" {
  region = "ap-south-1"
}