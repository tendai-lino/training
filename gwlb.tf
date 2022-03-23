resource aws_lb gateway_lb {
  load_balancer_type = "gateway"
  name               = "gwlb"
  enable_cross_zone_load_balancing = true
  subnet_mapping {
    subnet_id = aws_subnet.sec2-sub.id
  }
     tags = {
    Name = "my-gateway-load-balancer"
  }
  
  }