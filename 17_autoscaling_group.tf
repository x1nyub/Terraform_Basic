resource "aws_placement_group" "lsy_pg" {
  name     = "lsy-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "lsy_autosg" {
  name                      = "lsy-autosg"
  min_size                  = 1
  max_size                  = 10
  health_check_grace_period = 60
  health_check_type         = "EC2"
  desired_capacity          = 2
  force_delete              = false
  launch_configuration      = aws_launch_configuration.lsy_autola.name
  vpc_zone_identifier       = [aws_subnet.lsy_weba.id, aws_subnet.lsy_webc.id]

}
