terraform {
  required_version = "~> 0.14.0" # Terraform Version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.24.0" # AWS Provider
    }
  }
}

# Terraform = v1.3.7
# AWS Provider = v4.53.0