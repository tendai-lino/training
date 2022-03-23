resource "aws_default_route_table" "vpc1rtb" {
  default_route_table_id = aws_vpc.main1.default_route_table_id

  # route {
  #   cidr_block = "10.0.1.0/24"
  #   gateway_id = aws_internet_gateway.example.id
  # }
  
    tags = {
    Name = "vpc1-route-table"
  }
  }
  
  resource "aws_default_route_table" "vpc2rtb" {
  default_route_table_id = aws_vpc.main2.default_route_table_id

  # route {
  #   cidr_block = "10.0.1.0/24"
  #   gateway_id = aws_internet_gateway.example.id
  # }
      tags = {
    Name = "vpc2-route-table"
  }
  }
   resource "aws_default_route_table" "securityrtb" {
  default_route_table_id = aws_vpc.main3.default_route_table_id

  # route {
  #   cidr_block = "10.0.1.0/24"
  #   gateway_id = aws_internet_gateway.example.id
  # }
      tags = {
    Name = "securityvpc-route-table"
  }
  }