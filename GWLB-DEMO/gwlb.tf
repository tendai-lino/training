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
  
  resource "aws_lb_target_group" "mygwlb-target" {
  name     = "gwlb-test"
  port     = 6081
  protocol = "GENEVE"
  vpc_id   = aws_vpc.main3.id
  target_type = "instance"


  health_check {
    port     = 22
    protocol = "TCP"
   
  }
}


resource "aws_lb_target_group_attachment" "gwlb_attach" {
  target_group_arn = aws_lb_target_group.mygwlb-target.arn
  target_id        = aws_instance.dummyfirewall.id
  port             = 6081
}