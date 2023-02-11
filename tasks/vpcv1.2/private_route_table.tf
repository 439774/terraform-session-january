resource "aws_route_table" "priv_route_table_task" {
  vpc_id = aws_vpc.task_vpc.id

  route {
    cidr_block = "${var.open_cidr}"
    nat_gateway_id = aws_nat_gateway.task_nat_gw[count.index]
  }
  tags = {
    Name = "terra_priv_route_table"
  }
}