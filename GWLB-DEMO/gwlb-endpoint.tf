resource "aws_vpc_endpoint" "security_vpc_glwb_endpoint" {
 service_name      = aws_vpc_endpoint_service.gwlb-endpointservice.service_name
 vpc_endpoint_type = aws_vpc_endpoint_service.gwlb-endpointservice.service_type
  subnet_ids        = [aws_subnet.sec1-sub.id]
  vpc_id            = aws_vpc.main3.id
  tags = {

  Name = "securityvpc-endpoint"
  }
  
}