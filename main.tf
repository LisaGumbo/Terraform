terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "LG-example-vpc"
  }
}


resource "aws_subnet" "subnet0" {
  vpc_id     = aws_vpc.vpc0.id 
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "example-subnet"
  }
}

resource "aws_vpc" "vpc0" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "LG-vpc0-vpc"
  }
}