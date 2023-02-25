resource "aws_route_table_association" "subnet1-public" {
  subnet_id      = aws_subnet.subnet1-public.id
  route_table_id = aws_route_table.awsroutetable.id
}

resource "aws_route_table_association" "subnet2-public" {
  subnet_id      = aws_subnet.subnet2-public.id
  route_table_id = aws_route_table.awsroutetable.id
}