terraform {
  backend "s3" {
    bucket = "terraform-session-septemeber-backend-alisher"
    key    = "session-7/terraform.tfstate"  # Where does terraform need to store your file. Path Or Prefix
    region = "us-east-1"
    dynamodb_table = "terraform-session-sep-state-lock"  # Lock Table
  }
}


# 1. You cannot use any variables in key