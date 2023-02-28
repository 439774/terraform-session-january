terraform {
  backend "s3" {
    bucket = "terraform-session-septemeber-backend-alisher"
    key    = "terraform.tfstate"  # Where does terraform need to store your file. Path Or Prefix
    region = "us-east-1"
    dynamodb_table = "terraform-session-sep-state-lock"  # Lock Table
    workspace_key_prefix = "session-11"
  }
}

/* Currently: default
Backend File Path: session-11/terraform.tfstate

Switch: dev
Backend File Path: session-11/dev/terraform.tfstate

When you use Terraform workspace
It creates a terraform.tfstate in a following path

workspace_key_prefix/workspace_name/key */
# 1. You cannot use any variables in key