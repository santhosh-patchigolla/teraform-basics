variable "sample" {
    default = "Santhosh Welcome To Terraform"
}

output "sample" {
    default = "Santhosh Welcome To Terraform training"
}

variable "sample_op" {
    value = "Welcome to DevOps training"
}

output "sample_var_op" {
    value = "Value of the variable is ${sample_var_op}"
}




# below is the varible list 

variable "example_list" {
    default = [
        "AWS",
        "DEVOPS",
         55,
        "TRAINER",
        "TERAFORM" 
    ]
}

output "example_list_op" {
    value = "Welcome to ${var.example_list[1]}  with ${var.example_list[0]} Training and this is our batch ${var.example_list[2]} and the current topic is ${var.example_list[4]}"
}



