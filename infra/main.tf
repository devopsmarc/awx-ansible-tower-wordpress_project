terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "Genesis" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    Name = "Genesis"
  }
  # vpc_security_group_ids = ["${aws_security_group.custom-web-access.id}","sg-0acbd4c31346d9095"]
}

# resource "aws_key_pair" "aws_ssh_keys" {
#   key_name = var.key_name
#   public_key = file("${var.key_name}.pub")
# }