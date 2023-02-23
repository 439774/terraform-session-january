/* Terraform Modules
1. Child Module = declare the resources
2. Root Module  = call the child module, run Terraform commands

Local Module = module is in yoru filesystem
Remote Module = SCM, HTTP URL, Terraform Cloud or Enterprise Private Registeries */

module "ec2_instance" {
    source = "../../modules/ec2" # Where the child module is
######################## Variables ########################
    env = "dev"
    ami = "ami-0aa7d40eeae50c9a9"
    instance_type = "t2.micro"
    sg = [module.ec2_sg.id]  # Module.Module_Name.Attribute
}

module "ec2_sg" {
    source = "../../modules/sg"
    env = "dev"
}