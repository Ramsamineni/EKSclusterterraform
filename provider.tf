terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
    region = var.AWS_REGION
    # access_key = ""
    # secret_key = ""

}
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}



resource "aws_instance" "demo" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"

  tags = {
    Name = "demo server"
    Env = "dev"
  }
}

