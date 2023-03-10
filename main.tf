terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami             = "ami-095413544ce52437d"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.ingress-all-test.id}"]

  tags = {
    Name = var.instance_name
  }
  subnet_id = aws_subnet.subnet-uno.id
  user_data = "${file("scripts/setup.sh")}"
}
