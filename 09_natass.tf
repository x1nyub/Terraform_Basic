resource "aws_route_table_association" "lsy_natass_wasa" {
  subnet_id      = aws_subnet.lsy_wasa.id
  route_table_id = aws_route_table.lsy_natrt.id
}

resource "aws_route_table_association" "lsy_natass_wasc" {
  subnet_id      = aws_subnet.lsy_wasc.id
  route_table_id = aws_route_table.lsy_natrt.id
}

resource "aws_route_table_association" "lsy_natass_dba" {
  subnet_id      = aws_subnet.lsy_dba.id
  route_table_id = aws_route_table.lsy_natrt.id
}

resource "aws_route_table_association" "lsy_natass_dbc" {
  subnet_id      = aws_subnet.lsy_dbc.id
  route_table_id = aws_route_table.lsy_natrt.id
}
