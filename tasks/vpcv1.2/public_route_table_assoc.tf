resource "aws_route_table_association" "pub_a" {
  count = length(aws_subnet.pub_sub_a.id)
  subnet_id      = element(aws_subnet.pub_sub_a.id, count.index)
  route_table_id = aws_route_table.pub_route_table_task.id
}
