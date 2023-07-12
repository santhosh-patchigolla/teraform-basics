

variable "city" {}           // giving empty varible but it will be pickup from the terraform.tfvars is its the defaullt one

output "city_name" {
    value = "Our city name is ${var.city}"
}  







