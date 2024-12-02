terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240801"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

