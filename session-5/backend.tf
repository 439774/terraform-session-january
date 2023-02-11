terraform {
  backend "s3" {
    bucket = "terraform-session-septemeber-backend-alisher"
    key    = "session-5/terraform.tfstate"  # Where does terraform need to store your file. Path Or Prefix
    region = "us-east-1"
  }
}
