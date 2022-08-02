resource "aws_internet_gateway" "lsy_ig" {
    vpc_id = aws_vpc.lsy_vpc.id
    tags={
        Name="lsy-ig"
    }
}