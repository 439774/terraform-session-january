resource "aws_route_table_association" "pub_a" {
  count = aws_subnet.pub_sub_a
  subnet_id      = element(aws_subnet.pub_sub_a, count.index)
  route_table_id = aws_route_table.pub_route_table_task.id
}
