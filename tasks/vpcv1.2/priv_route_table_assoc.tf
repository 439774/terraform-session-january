resource "aws_route_table_association" "priv_a" {
  subnet_id      = aws_subnet.priv_sub_a[3].id
  route_table_id = aws_route_table.priv_route_table_task.id
}
