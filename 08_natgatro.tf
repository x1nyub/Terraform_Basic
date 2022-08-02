resource "aws_route_table" "lsy_natrt" {
  vpc_id = aws_vpc.lsy_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.lsy_natgw.id
  }
  tags = {
    Name = "lsy-natrt"
  }
}