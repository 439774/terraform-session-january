resource "aws_security_group" "main_sg" {   
    name        = "main"
    description = "Allow SSH inbound traffic"
}

resource "aws_security_group_rule" "ingress" {
  count = 2
  type              = "ingress"
  to_port           = element(var.ports, 0) #22
  protocol          = "tcp"
  from_port         = element(var.ports, 0) #22
  security_group_id = aws_security_group.main_sg.id
  cidr_blocks = [ "0.0.0.0/0" ]
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  to_port           = 0
  protocol          = "tcp"
  from_port         = 0
  security_group_id = aws_security_group.main_sg.id
  cidr_blocks = [ "0.0.0.0/0" ]
}

# Corrections:
# 1. Lower case
# 2. _ instead of -
# 3. Proper name for the second_label