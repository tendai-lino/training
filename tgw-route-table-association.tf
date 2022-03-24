resource "aws_ec2_transit_gateway_route_table_association" "vpc1-associate" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.vpc1attach.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.vpc1-attach-rtb.id
}

resource "aws_ec2_transit_gateway_route_table_association" "vpc2-associate" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.vpc2attach.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.vpc2-attach-rtb.id
}

resource "aws_ec2_transit_gateway_route_table_association" "security-associate" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.security-attach.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.security-attach-rtb.id
}