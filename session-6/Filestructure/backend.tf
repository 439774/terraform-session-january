terraform {
  backend "s3" {
    bucket = "terraform-session-septemeber-backend-alisher"
    key    = "session-6/filestructure/_env_/terraform.tfstate"  # Where does terraform need to store your file. Path Or Prefix
    region = "us-east-1"
    dynamodb_table = "terraform-session-sep-state-lock"  # Lock Table
  }
}


# 1. You cannot use any variables in key
# 2. If you want to isolate infrastrucuture and reuse your configuration files, must isolate the backend
# 3. isolating backend = isolating enviroment