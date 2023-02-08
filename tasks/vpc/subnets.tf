resource "aws_subnet" "pub_sub_a" {
  vpc_id     = [ aws_vpc.task_vpc.id ]
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pub_sub_a"
  }
}

resource "aws_subnet" "pub_sub_b" {
  vpc_id     = [ aws_vpc.task_vpc.id ]
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pub_sub_b"
  }
}

resource "aws_subnet" "pub_sub_c" {
  vpc_id     = [ aws_vpc.task_vpc.id ]
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pub_sub_c"
  }
}