
resource "aws_instance" "sample" {                 // this will create the ec2 instance and you neeed to give the provider name(nothing but the cloud) you can give below or give in the seperate file provider.tf
  ami                    = data.aws_ami.image.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]     
  tags = {
    Name = "Linux"
  }                        // you can get the security group attributes from the document 
}



variable "sg" {}

output "public_ip"{
    value   = aws_instance.sample.public_ip
}


