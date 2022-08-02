resource "aws_instance" "lsy_ec2" {
    ami="ami-0e1d09d8b7c751816"
    instance_type = "t2.micro"
    key_name = "lsy-key"
    vpc_security_group_ids = [aws_security_group.lsy_sec.id]
    availability_zone = "ap-northeast-2a"
    subnet_id = aws_subnet.lsy_weba.id
    associate_public_ip_address = true
    user_data = file("wordpress.sh")
}

output "public_ip" {
  value=aws_instance.lsy_ec2.public_ip
}

