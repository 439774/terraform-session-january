resource "aws_subnet" "pub_sub_a" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = "${var.cidr_block_public_a}"
  availability_zone = "${var.availability_zone_a}"
  tags = {
    Name = "public_sub_a"
  }
}

resource "aws_subnet" "pub_sub_b" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = "${var.cidr_block_public_b}"
  availability_zone = "${var.availability_zone_b}"
  tags = {
    Name = "public_sub_b"
  }
}

resource "aws_subnet" "pub_sub_c" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = "${var.cidr_block_public_c}"
  availability_zone = "${var.availability_zone_c}"
  tags = {
    Name = "public_sub_c"
  }
}