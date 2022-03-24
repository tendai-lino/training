resource "aws_ec2_transit_gateway" "mytgw" {
  description = "demo transit gateway"
  default_route_table_association    = "disable"
  default_route_table_propagation    = "disable"
   tags = {
    Name = "TGW"
  }
}

