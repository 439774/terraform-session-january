# Input Variables

variable "instance_type" {
    type = string
    description = "This is an instance type for EC2 instances"
    default = "t2.micro"
}

variable "ami" {
    type = string
    description = "This is an instance type for EC2 instances"
    default = "ami-0aa7d40eeae50c9a9"
}

variable "env" {
    type = string
    description = "This is an instance type for EC2 instances"
    default = "dev"
}