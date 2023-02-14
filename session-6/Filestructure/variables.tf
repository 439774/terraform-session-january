variable "aws_region" {    
    default = "us-east-1"
}

# Input Variables

variable "env" {
    type = list(string)
    description = "This variable is for enviorment"
    default = [ "dev", "qa", "stage", "production" ]
}
