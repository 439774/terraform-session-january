resource "aws_route_table_association" "priv_a" {
  count = length(aws_subnet.priv_sub_a[*])
  subnet_id      = aws_subnet.priv_sub_a[count.index].id
  route_table_id = aws_route_table.priv_route_table_task.id
}
