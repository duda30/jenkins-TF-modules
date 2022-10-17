
terraform {
  required_providers {
    aws = {
      version = "4.34.0"
    }
  }
  backend "s3" {
    bucket = "my-bucket-mary-maria12312"
    key    = "desafio-jenkins/usando-modulos/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.aws_region
}