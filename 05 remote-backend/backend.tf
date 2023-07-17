# Note that the statefile is remote and this is what we use

terraform {
  backend "s3" {
    bucket = "b54-santhosh-terraform-remote-state"
    key    = "05-remote/terraform.tfstate"                    # this is the you need to give the backend path means where we store the state file,terrafrom.tfstate you can see in the s3 bucket where the state file is located.
    region = "us-east-1"
  }
}