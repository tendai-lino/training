resource "aws_vpc_endpoint_service" "gwlb-endpointservice" {
  acceptance_required        = true
    depends_on = [
    aws_lb.gateway_lb
  ]
  gateway_load_balancer_arns = [aws_lb.gateway_lb.arn]

     tags = {
    Name = "gwlb-endpointservice"
  }

}