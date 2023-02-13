variable "aws_region" {    
    default = "us-east-1"
}

variable "cidr_blocks" {
  type = string
  description = "defines CIDR block for all traffic"
  default = "0.0.0.0/0"
}
variable "protocol" {
  type = string
  description = "protocol type"
  default ="tcp"
}
variable "ports" {
    type = list(string)
    description = "List of ports"
    default = [ "22", "80", "443", "3306" ] # index numbers 0 1 ...
}

variable "cidrs" {
    type = list(string)
    description = "List of cidrs"
    default = [ "0.0.0.0/0" ] # index numbers 0 1 ...
}