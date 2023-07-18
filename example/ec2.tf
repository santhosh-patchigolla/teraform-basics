# create the Ec2
resource "aws_instance" "server" {                 // this will create the ec2 instance and you neeed to give the provider name(nothing but the cloud) you can give below or give in the seperate file provider.tf
  ami                    = "ami-0b374f36561bf0fd4"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]                           // you can get the security group attributes from the document 

  tags = {
    Name = "TerraformServer"
  }
}

output "private_ip" {
value   = aws_instance.server.private_ip
}


# create the SG

resource "aws_security_group" "allow_all" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}