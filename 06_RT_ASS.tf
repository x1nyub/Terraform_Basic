resource "aws_route_table_association" "lsy_rtass_a"{
    subnet_id = aws_subnet.lsy_weba.id
    route_table_id = aws_route_table.lsy_rt.id
}

resource "aws_route_table_association" "lsy_rtass_c"{
    subnet_id = aws_subnet.lsy_webc.id
    route_table_id = aws_route_table.lsy_rt.id
}