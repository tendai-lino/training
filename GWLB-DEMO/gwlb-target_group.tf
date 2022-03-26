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