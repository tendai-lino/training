resource "aws_lb_listener" "gwlb-listen" {
  load_balancer_arn = aws_lb.gateway_lb.arn

  default_action {
    target_group_arn = aws_lb_target_group.mygwlb-target.arn
    type             = "forward"
  }
}



