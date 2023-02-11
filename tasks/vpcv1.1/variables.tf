variable "aws_region" {    
    default = "us-east-1"
}
# Cidr Block For Public
variable "cidr_block_public_a" {
  type = string
  default = "10.0.1.0/24"
}

variable "cidr_block_public_b" {
  type = string
  default = "10.0.2.0/24"
}

variable "cidr_block_public_c" {
  type = string
  default = "10.0.3.0/24"
}
# Cidr Block For Private
variable "cidr_block_private_a" {
  type = string
  default = "10.0.11.0/24"
}

variable "cidr_block_private_b" {
  type = string
  default = "10.0.12.0/24"
}

variable "cidr_block_private_c" {
  type = string
  default = "10.0.13.0/24"
}
# Avaliabilty Zone
variable "availability_zone_a" {
  type = string
  description = "Defines AZ for the subnet"
  default = "us-east-1a" 
}

variable "availability_zone_b" {
  type = string
  description = "Defines AZ for the subnet"
  default = "us-east-1b" 
}

variable "availability_zone_c" {
  type = string
  description = "Defines AZ for the subnet"
  default = "us-east-1b" 
}