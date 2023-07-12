

variable "city" {}           // giving empty varible but it will be pickup from the terraform.tfvars is its the defaullt one and city is the varible name so we will give in the outpust section

output "city_name" {                          // using this variable we can print the city name from th eterraform.tfvars
    value = "Our city name is ${var.city}"
}  







