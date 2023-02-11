resource "aws_subnet" "pub_sub_a" {
  count = length(["${var.public_cidrs}", "${var.global_az}"])
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = format("%s", element(var.public_cidrs, count.index))
  availability_zone = format("%s", element(var.global_az, count.index))
  tags = {
    Name = format("%s", element(var.global_az, count.index))
  }
}