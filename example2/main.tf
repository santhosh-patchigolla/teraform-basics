# This is an example for calling the modules for a local source and hence we can call them as local modules



module "ec2" {
  source = "./ec2"
}

module "sg" {
  source = "./sg"
}


output "public_ip_address" {
  value  = module.ec2.public_ip                          # This is going to fetch the declared output and prints
}