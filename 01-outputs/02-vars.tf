variable "sample" {
    default = "Welcome To Terraform"
}

output "sample-op" {
    value = var.sample
}