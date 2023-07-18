terraform {
  backend "s3" {
    bucket = "b54-santhosh-terraform-remote-state"
    key    = "modules-example/terraform.tfstate"                    # this is the you need to give the backend path means where we store the state file,modules-example/terraform.tfstate in s3 bucket you can the file where the state is located.
    region = "us-east-1"
  }
}

provider "aws" {
    region =  "us-east-1"  
}