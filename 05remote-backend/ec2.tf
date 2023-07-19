resource "aws_instance" "remote-app" {                 // this will create the ec2 instance and you neeed to give the provider name(nothing but the cloud) you can give below or give in the seperate file provider.tf and this "remote-app" is a name where terrafrom can recognise the sever ID and Tag name is some thing that the server will be spin with the same ID
  ami           = "ami-0b374f36561bf0fd4"
  instance_type = "t2.micro"

  tags = {
    Name = "Linux_server_with_Remote_Backend"
  }
}