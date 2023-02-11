resource "aws_security_group" "main_sg" {   
    name        = "main"
    description = "Allow SSH inbound traffic"
}

resource "aws_security_group_rule" "ingress" {
  count = length([ "${var.ports}", "${var.cidrs}" ])
  type              = "ingress"
  to_port           = element(var.ports, count.index) #22
  protocol          = "${var.protocol}"
  from_port         = element(var.ports, count.index) #22
  security_group_id = aws_security_group.main_sg.id
  cidr_blocks = [ format("%s", element(var.cidrs, count.index)) ]
}

resource "aws_security_group_rule" "egress" {
  count = 1
  type              = "egress"
  to_port           = 0
  protocol          = "${var.protocol}"
  from_port         = 0
  security_group_id = aws_security_group.main_sg.id
  cidr_blocks = [ element(var.cidrs, 0) ]
}

# count.index = count the indexes

# Corrections:
# 1. Lower case
# 2. _ instead of -
# 3. Proper name for the second_label