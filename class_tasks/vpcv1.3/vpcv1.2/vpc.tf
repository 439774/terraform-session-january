resource "aws_vpc" "task_vpc" {     
  cidr_block       = "${var.open_cidr[1]}"
  tags = {
    Name = "terraform_vpc"
  }
} 