provider "aws" {
    region = "${var.region}" # "${}" Is used to expand a variable
}