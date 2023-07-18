data "aws_ami" "image" {   // using this we can fetch the latest AMI of the ansilbe-lab-image
  most_recent      = true
  name_regex       = "ansible-lab-image"
}