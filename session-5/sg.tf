    resource "aws_security_group" "main_sg" {   
    name        = "main"
    description = "Allow SSH inbound traffic"



}


# Corrections:
# 1. Lower case
# 2. _ instead of -
# 3. Proper name for the second_label