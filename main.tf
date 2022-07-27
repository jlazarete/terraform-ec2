terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.3.2"
    }

  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "bastion-linux" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}

