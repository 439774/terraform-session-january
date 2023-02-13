    resource "aws_security_group" "CreateSG" {   
    name        = "main"
    description = "Allow SSH inbound traffic"

    ingress {
        from_port        = var.port1
        to_port          = var.port1 # number
        protocol         = "${var.protocol}" # string
        cidr_blocks      = [format("%s", var.cidr_blocks)] # list of strings
    }

    ingress {
        from_port        = var.port2
        to_port          = var.port2
        protocol         = "${var.protocol}" # string
        cidr_blocks      = [format("%s", var.cidr_blocks)] # list of strings
    }

    ingress {
        from_port        = var.port3
        to_port          = var.port3
        protocol         = "${var.protocol}" # string
        cidr_blocks      = [format("%s", var.cidr_blocks)] # list of strings
    }

    ingress {
        from_port        = var.port5
        to_port          = var.port5
        protocol         = "${var.protocol}" # string
        cidr_blocks      = [format("%s", var.cidr_blocks)] # list of strings
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1" # string
        cidr_blocks      = [format("%s", var.cidr_blocks)] # list of strings
    }
    
    }


# Corrections:
# 1. Lower case
# 2. _ instead of -
# 3. Proper name for the second_label