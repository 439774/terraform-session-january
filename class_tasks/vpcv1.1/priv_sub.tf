resource "aws_subnet" "priv_sub_a" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = "${var.cidr_block_private_a}"
  availability_zone = "${var.availability_zone_a}"
  tags = {
    Name = "private_sub_a"
  }
}

resource "aws_subnet" "priv_sub_b" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = "${var.cidr_block_private_b}"
  availability_zone = "${var.availability_zone_b}"
  tags = {
    Name = "private_sub_b"
  }
}

resource "aws_subnet" "priv_sub_c" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = "${var.cidr_block_private_c}"
  availability_zone = "${var.availability_zone_c}"
  tags = {
    Name = "private_sub_c"
  }
}