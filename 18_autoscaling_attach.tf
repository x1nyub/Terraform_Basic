resource "aws_autoscaling_attachment" "lsy_autosgattach" {
    autoscaling_group_name = aws_autoscaling_group.lsy_autosg.id
    lb_target_group_arn = aws_lb_target_group.lsy_albtarget.arn
    
}