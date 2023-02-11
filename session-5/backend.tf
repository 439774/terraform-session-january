terraform {
  backend "s3" {
    bucket = "mybuterraform-session-septemeber-backend-alishercket"
    key    = "session-5/terraform.tfstate"  # Where does terraform need to store your file. Path Or Prefix
    region = "us-east-1"
  }
}
