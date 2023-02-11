resource "aws_route_table_association" "priv_a" {
  count = length(aws_subnet.pub_sub_a)
  subnet_id      = element(aws_subnet.priv_sub_a, count.index)
  route_table_id = aws_route_table.priv_route_table_task.id
}
