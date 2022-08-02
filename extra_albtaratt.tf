resource "aws_lb_target_group_attachment" "lsy_albtaratt" {
  target_group_arn = aws_lb_target_group.lsy_albtarget.arn
  target_id        = aws_instance.lsy_ec2.id
  port             = 80
}
