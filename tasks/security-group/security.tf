resource "aws_security_group" "CreateSG" {   
  name        = "TerraformSG"
  description = "Allow SSH inbound traffic"
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
   egress {
    from_port        = -1
    to_port          = -1
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
}
}