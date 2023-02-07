resource "aws_instance" "first_ec2" {
  ami                    = "ami-0aa7d40eeae50c9a9"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["aws_security_group.main_sg.id"]
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