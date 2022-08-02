resource "aws_route_table" "lsy_rt" {
    vpc_id = aws_vpc.lsy_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.lsy_ig.id
    }
    tags={
        Name="lsy-rt"
    }
  
}