resource "aws_subnet" "lsy_weba" {
  vpc_id            = aws_vpc.lsy_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "lsy-puba"
  }
}
resource "aws_subnet" "lsy_webc" {
  vpc_id            = aws_vpc.lsy_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "lsy-pubc"
  }
}
resource "aws_subnet" "lsy_wasa" {
  vpc_id            = aws_vpc.lsy_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "lsy-wasa"
  }
}
resource "aws_subnet" "lsy_wasc" {
  vpc_id            = aws_vpc.lsy_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "lsy-wasc"
  }
}
resource "aws_subnet" "lsy_dba" {
  vpc_id            = aws_vpc.lsy_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "lsy-dba"
  }
}
resource "aws_subnet" "lsy_dbc" {
  vpc_id            = aws_vpc.lsy_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "lsy-dbc"
  }
}
