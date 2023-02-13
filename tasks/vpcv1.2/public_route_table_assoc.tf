resource "aws_route_table_association" "pub_a" {
  count = length(aws_subnet.pub_sub_a[*].id)
  subnet_id      = aws_subnet.pub_sub_a[count.index].id
  route_table_id = aws_route_table.pub_route_table_task.id
}
