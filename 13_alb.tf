resource "aws_alb" "lsy_alb" {
  name            = "lsy-alb"
  internal        = false
  security_groups = [aws_security_group.lsy_sec.id]
  subnets         = [aws_subnet.lsy_weba.id, aws_subnet.lsy_webc.id]

  tags = {
    Name = "lsy-alb"
  }
}
output "dns_name" {
  value = aws_alb.lsy_alb.dns_name
}
