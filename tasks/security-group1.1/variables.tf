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
  description = "specify protocol type"
  default ="tcp"
}
variable "port1" {
  type = string
  description = "Ports"
  default = "22"
}

variable "port2" {
  type = string
  description = "Ports"
  default = "80"
}

variable "port3" {
  type = string
  description = "Ports"
  default = "443"
}
variable "port4" {
  type = string
  description = "Ports"
  default = "100"
}

variable "port5" {
  type = string
  description = "Ports"
  default = "3306"
}
variable "port6" {
  type = string
  description = "Ports"
  default = "3389" 
}

variable "port7" {
  type = string
  description = "Ports"
  default = "5432" 
}

variable "port8" {
  type = string
  description = "Ports"
  default = "888" 
}


variable "port9" {
  type = string
  description = "Ports"
  default = "999" 
}


variable "port10" {
  type = string
  description = "Ports"
  default = "1000" 
}
