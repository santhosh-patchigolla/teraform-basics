#Creating the spot instances
resource "aws_spot_instance_request" "spot_worker" {
  ami                         = "data.aws_ami.image.id"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.allows_all.id]

  tags = {
    Name = var.COMPONENT
  }

# This will excute on the top of the remote server once it got created
  provisioner "remote-exec" {

    # Below is the connection block where we can pass the creds of the remote server to tun the playbook
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.private_ip   # as we dont know the IP because the server hasn't created yet we can use host section refer from doc
    }    
  
    inline = [
      "ansible-pull -U https://github.com/santhosh-patchigolla/ansible.git -e ENV=dev -e COMPONENT=${var.COMPONENT} -e APP_VERSION=${var.APP_VERSION} roboshop-pull.yml",               // Given var.appversion to declare the version over the CLI
    ]
  }
}


/* resource "aws_instance" "sample" {                 // this will create the ec2 instance and you neeed to give the provider name(nothing but the cloud) you can give below or give in the seperate file provider.tf
  ami                    = 
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]                           // you can get the security group attributes from the document 

# This will excute on the top of the remote server once it got created
  provisioner "remote-exec" {

             # Below is the connection block where we can pass the creds of the remote server to tun the playbook
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.private_ip   # as we dont know the IP because the server hasn't created yet we can use host section refer from doc
    }    
  
    inline = [
      "ansible-pull -U https://github.com/santhosh-patchigolla/ansible.git -e ENV=dev -e COMPONENT=${var.COMPONENT} -e APP_VERSION=${var.APP_VERSION} roboshop-pull.yml",               // Given var.appversion to declare the version over the CLI
    ]
  }
}

variable "sg" {}

output "public_ip"{
    value   = aws_instance.sample.public_ip
} */