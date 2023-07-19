data "aws_ami" "image" {   // using this we can fetch the latest AMI of the ansilbe-lab-image
  most_recent      = true
  name_regex       = "ansible-lab-image"
  owners           = ["self"]                   // used self because this {ansible-lab-image} ami is in my account if it is other than your account you can remove the self once.
}