resource "aws_subnet" "vpc1-sub" {
  vpc_id     = aws_vpc.main1.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "vpc1-demo-subnet"
  }
}

resource "aws_subnet" "vpc2-sub" {
  vpc_id     = aws_vpc.main2.id
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "vpc2-demo-subnet"
  }
}