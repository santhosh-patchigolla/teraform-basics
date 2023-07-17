# Note that the statefile is remote and this is what we use

terraform {
  backend "s3" {
    bucket = "b54-santhosh-terraform-remote-state"
    key    = "05-remote/terraform.tfstate"                    # this is the you need to give the backend path means where we store the state file,05-remote/terraform.tfstate in s3 bucket you can the file where the state is located.
    region = "us-east-1"
  }
}