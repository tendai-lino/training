resource "aws_ec2_transit_gateway_route_table" "vpc1-attach-rtb" {
  transit_gateway_id = aws_ec2_transit_gateway.mytgw.id
  
     tags = {
    Name = "vpc1-attach-tgw-route-table"
  }
}
#   ADD route to tgw rtb for vpc1 attach
resource "aws_ec2_transit_gateway_route" "vpc1-route-tgw" {
  destination_cidr_block         = "0.0.0.0/0"
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.security-attach.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.vpc1-attach-rtb.id
}

#####################################################################################################################

resource "aws_ec2_transit_gateway_route_table" "vpc2-attach-rtb" {
  transit_gateway_id = aws_ec2_transit_gateway.mytgw.id
  
     tags = {
    Name = "vpc2-attach-tgw-route-table"
  }
}

#   ADD route to tgw rtb for vpc2 attach
resource "aws_ec2_transit_gateway_route" "vpc2-route-tgw" {
  destination_cidr_block         = "0.0.0.0/0"
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.security-attach.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.vpc2-attach-rtb.id
}

#######################################################################################################################


resource "aws_ec2_transit_gateway_route_table" "security-attach-rtb" {
  transit_gateway_id = aws_ec2_transit_gateway.mytgw.id
  
     tags = {
    Name = "securityvpc-attach-tgw-route-table"
  }
}

#   ADD route to tgw rtb for security attach ----knowws routes to all vpcs directly via respective attachments
resource "aws_ec2_transit_gateway_route" "security-to-vpc1-route-tgw" {
  destination_cidr_block         = "10.0.0.0/16"
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.security-attach.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.vpc1-attach-rtb.id
}

resource "aws_ec2_transit_gateway_route" "security-to-vpc2-route-tgw" {
  destination_cidr_block         = "192.168.0.0/16"
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.security-attach.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.vpc2-attach-rtb.id
}