resource "aws_instance" "web" {
  ami           = "ami-0b374f36561bf0fd4"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}