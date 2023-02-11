resource "aws_route_table_association" "priv_a" {
  subnet_id      = aws_subnet.pub_sub_a[2].id
  route_table_id = aws_route_table.priv_route_table_task.id
}
