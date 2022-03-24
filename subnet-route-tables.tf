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
 
 
 
 
  resource "aws_route_table" "sec1-tgw-sub-route" {
  vpc_id = aws_vpc.main3.id

  route {
    cidr_block = "0.0.0.0/0"
    vpc_endpoint_id = aws_vpc_endpoint.security_vpc_glwb_endpoint.id
  }

   tags = {
    Name = "transit-gateway-Subnet-route-table"
  }
}
  
  resource "aws_route_table" "sec2-fw-sub-route" {
  vpc_id = aws_vpc.main3.id

  route {
    cidr_block = "0.0.0.0/0"
    transit_gateway_id = aws_ec2_transit_gateway.mytgw.id
  }

   tags = {
    Name = "Firewall-Subnet-route-table"
  }
}