resource "aws_db_instance" "lsy_db" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  name                   = "mydb"
  identifier             = "mydb"
  username               = "root"
  password               = "It12345!"
  parameter_group_name   = "default.mysql5.7"
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.lsy-dbsg.id
  vpc_security_group_ids = [aws_security_group.lsy_sec.id]
  skip_final_snapshot    = true
  tags = {
    Name = "lsy-db"
  }
}

resource "aws_db_subnet_group" "lsy-dbsg" {
  name       = "lsy-dbsg"
  subnet_ids = [aws_subnet.lsy_dba.id, aws_subnet.lsy_dbc.id]

}
