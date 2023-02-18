variable "aws_region" {    
    default = "us-east-1"
}

variable "global_az" {
    type = list(string)
    description = "List of cidrs"
    default = [ "us-east-1a", "us-east-1b", "us-east-1c" ] # index numbers 0 1 ...
}

variable "env" {
    type = string
    default = "dev"
}

variable "team" {
    type = string
    default = "devops"
}

variable "app" {
    type = string
    default = "homework"
}

variable "index" {
    type = string
    default = "0"
}

variable "managed_by" {
    type = string
    default = "terraform"
}

variable "owner" {
    type = string
    default = "ali"
}