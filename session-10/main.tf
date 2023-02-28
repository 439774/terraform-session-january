# Calling a child module remotely 
# Github
module "ec2" {
    source = "github.com/AlisherMuhtarov/terraform-session-january/modules/ec2"
    env = "dev"
    ami = "ami-0aa7d40eeae50c9a9" 
    instance_type = "t2.micro"
}

# Terraform Registry 
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.0"
}
# github.com = Domain Name (SCM)
# /aKumoSolutions = Organization
# /terraform-session-january = Repository
# /tree = 
# /main = Branch (default)
# /modules = Subdirectory
# /ec2 = Subdirectory