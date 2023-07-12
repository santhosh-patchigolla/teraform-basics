variable "sample" {
    default = "Santhosh Welcome To Terraform"
}

output "sample-op" {
    value = var.sample
}


variable "sample_op" {
    default = "Welcome to terraform training"
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
    value = Welocome to ${var.example_list[1]} with ${var.exaple_list[0]} and this is batch of ${var.exaple_list[3]} and the currenc topic is ${var.example_list[4]}
}
