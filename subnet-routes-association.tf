resource "aws_route_table_association" "tgw-sub-association" {
  subnet_id      = aws_subnet.sec1-sub.id
  route_table_id = aws_route_table.sec1-tgw-sub-route.id
}

resource "aws_route_table_association" "fw-sub-association" {
  subnet_id      = aws_subnet.sec2-sub.id
  route_table_id = aws_route_table.sec2-fw-sub-route.id
}