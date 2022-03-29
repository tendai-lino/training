provider "aws" {
region = data.aws_region.current.name

}

resource "aws_vpc" "main1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc1"
  }
}

resource "aws_vpc" "main2" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc2"
  }
}

resource "aws_vpc" "main3" {
  cidr_block       = "172.16.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "security"
  }
}

