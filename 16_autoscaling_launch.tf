resource "aws_launch_configuration" "lsy_autola" {
  name                 = "lsy-autola"
  image_id             = aws_ami_from_instance.lsy_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.lsy_sec.id]
  key_name             = "lsy-key"
  user_data            = <<-EOF
                         #! /bin/bash
                        systemctl start httpd
                        systemctl enable httpd
                        EOF

}
