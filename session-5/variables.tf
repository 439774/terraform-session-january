variable "aws_region" {    
    default = "us-east-1"
}

# Input Variables

variable "instance_type" {
    type = string
    description = "This is an instance type for EC2 instances"
    default = "t2.micro"
}

variable "env" {
    type = string
    description = "This is an instance TAG for EC2 instances"
    default = "dev"
}

variable "ports" {
    type = list(string)
    description = "List of ports"
    default = [ "22", "80" ]
}
