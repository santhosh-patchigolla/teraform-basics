variable "sample" {
    default = "Santhosh Welcome To Terraform"
}

output "sample-op" {
    value = var.sample
}