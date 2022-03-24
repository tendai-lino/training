resource "aws_ec2_transit_gateway_vpc_attachment" "vpc1attach" {
  subnet_ids         = [aws_subnet.vpc1-sub.id]
  transit_gateway_id = aws_ec2_transit_gateway.mytgw.id
  vpc_id             = aws_vpc.main1.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
   tags = {
    Name = "vpc1attachment"
  }

}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc2attach" {
  subnet_ids         = [aws_subnet.vpc2-sub.id]
  transit_gateway_id = aws_ec2_transit_gateway.mytgw.id
  vpc_id             = aws_vpc.main2.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags = {
    Name = "vpc2attachment"
  }

}

resource "aws_ec2_transit_gateway_vpc_attachment" "security-attach" {
  subnet_ids         = [aws_subnet.sec1-sub.id]
  transit_gateway_id = aws_ec2_transit_gateway.mytgw.id
  vpc_id             = aws_vpc.main3.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags = {
    Name = "securityvpc-attachment"
  }


}