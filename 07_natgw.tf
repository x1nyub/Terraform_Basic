resource "aws_eip" "lsy_natip" {
  vpc = true
}

resource "aws_nat_gateway" "lsy_natgw" {
  allocation_id = aws_eip.lsy_natip.id
  subnet_id     = aws_subnet.lsy_weba.id
  tags = {
    Name = "lsy-natgw"
  }
  depends_on = [
    aws_internet_gateway.lsy_ig
  ]
}
