resource "aws_key_pair" "lsy_key" {
  key_name = "lsy-key"
 public_key = file("../../../Users/user/.ssh/terraformlsy.pub")
 }