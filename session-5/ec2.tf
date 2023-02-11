resource "aws_instance" "first_ec2" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [ aws_security_group.main_sg.id ]
  tags = {
    Name = "${var.env}-instance"
  }
}


# List

# list of strings = ["ert", "zxc", "qwe"]
# list of numbers = [ 6, 8, 0,]

# Data Type
# 1. Integer
# 2. Float
# 3. Number = 0, 1, 2, 3, 4, 5
# 5. String = "whatever you see on your keyboard is a string"
# 6. Boolean = true, false

# Reference to Resource
# first_label.second_label.attribute 
# Attributes are something that is known after the creation
# Cannot be a string because References are dynamic not static
# Reference to input variable
# Syntax: var.VariableName