provider "aws" {
    region = "${var.aws_region}"
}

# "${}" Is used to expand a variable