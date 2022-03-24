resource "aws_subnet" "vpc1-sub" {
  vpc_id     = aws_vpc.main1.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "af-south-1a"

  tags = {
    Name = "vpc1-demo-subnet"
  }
}

resource "aws_subnet" "vpc2-sub" {
  vpc_id     = aws_vpc.main2.id
  cidr_block = "192.168.0.0/24"
  availability_zone = "af-south-1a"

  tags = {
    Name = "vpc2-demo-subnet"
  }
}

resource "aws_subnet" "sec1-sub" {
  vpc_id     = aws_vpc.main3.id
  cidr_block = "172.16.0.0/24"
  availability_zone = "af-south-1a"

  tags = {
    Name = "transit-gw-subnet"
  }
}

resource "aws_subnet" "sec2-sub" {
  vpc_id     = aws_vpc.main3.id
  cidr_block = "172.16.1.0/24"
  availability_zone = "af-south-1a"

  tags = {
    Name = "firewall-gwlb-subnet"
  }
}