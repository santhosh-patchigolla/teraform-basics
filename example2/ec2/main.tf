resource "aws_instance" "sample" {                 // this will create the ec2 instance and you neeed to give the provider name(nothing but the cloud) you can give below or give in the seperate file provider.tf
  ami           = "ami-0b374f36561bf0fd4"
  instance_type = "t2.micro"

}