resource "aws_instance" "first_ec2" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.main_sg.id ]
  key_name = aws_key_pair.terraform_server.key_name

  provisioner "file" {
    source = "/home/ec2-user/terraform-session-january/session-8/index.html" # path on Terraform Server
    destination = "/tmp/index.html" # path for the Remote Server

    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}   

resource "aws_key_pair" "terraform_server" {
  key_name = "Terraform-Server-key"
  public_key = file("~/.ssh/id_rsa.pub")
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