resource "aws_security_group" "CreateSG" {   
  name        = "TerraformSG"
  description = "Allow SSH inbound traffic"
  egress {
    from_port        = 22
    to_port          = 22
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}