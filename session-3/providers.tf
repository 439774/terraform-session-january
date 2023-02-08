provider "aws" {
    region = "${var.region}" # "${}" Is used to expand a variable
}

# To know which service provider you are trying to use