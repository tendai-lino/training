resource "aws_instance" "dummyfirewall" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  source_dest_check = false
  subnet_id = aws_subnet.sec2-sub.id

  tags = {
    Name = "DummyFirewall"
  }
}