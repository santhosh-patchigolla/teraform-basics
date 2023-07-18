# This is an example for calling the modules for a local source and hence we can call them as local modules



# root Module is a place where we ecute the terraform command

module "ec2" {
  source = "./ec2"
  sg     = module.sg.sgid
}

module "sg" {
  source = "./sg"      // path of the sg 
}

output "public_ip_address" {
  value  = module.ec2.public_ip                          # This is going to fetch the declared output and prints
}