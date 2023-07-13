# and you given the empty var which is not declared in the tf.vars while running the plan it will ask the var what you wnat to run.

variable "city" {}           // giving empty varible but it will be pickup from the terraform.tfvars is its the defaullt one and city is the varible name so we will give in the outpust section

output "city_name" {                          // using this variable we can print the city name from th eterraform.tfvars
    value = "Our city name is ${var.city}"
}  


variable "state" {}
 
output "state_name" {
    value = "our state name is ${var.state}"
}

variable "cold_city"{}
    
    output "cold_city_output" {
        value = "our cold city name is ${var.cold_city}"
    }



