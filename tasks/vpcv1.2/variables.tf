variable "aws_region" {    
    default = "us-east-1"
}

variable "open_cidr" {
  type = string
  default = "0.0.0.0/0"
}

variable "public_cidrs" {
    type = list(string)
    description = "List of cidrs"
    default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ] # index numbers 0 1 ...
}

variable "private_cidrs" {
    type = list(string)
    description = "List of cidrs"
    default = [ "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24" ] # index numbers 0 1 ...
}

variable "global_az" {
    type = list(string)
    description = "List of cidrs"
    default = [ "us-east-1a", "us-east-1b", "us-east-1c" ] # index numbers 0 1 ...
}