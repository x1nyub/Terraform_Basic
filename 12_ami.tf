resource "aws_ami_from_instance" "lsy_ami" {
  name               = "lsy-ami"
  source_instance_id = aws_instance.lsy_ec2.id
  depends_on = [
    aws_instance.lsy_ec2
  ]
}
