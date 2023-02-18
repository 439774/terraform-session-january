resource "aws_subnet" "priv_sub_a" {
  count = length("${var.private_cidrs}")
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = format("%s", element(var.private_cidrs, count.index))
  availability_zone = format("%s", element(var.global_az, count.index))
  tags = {
    Name = "aws-${var.team}-${var.env}-${var.app}-vpc-${var.index}"
  }
}
