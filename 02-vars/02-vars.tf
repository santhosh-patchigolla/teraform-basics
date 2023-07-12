    variable "sample" {
        default = "Welcome To Terraform"
    }

    output "sample_output" {
        value = var.sample
    }

    variable "sample_op" {
        default = "Welcome to terraform training"
    }

    output "sample_var_op" {
        value = "Value of the variable is ${var.sample_op}"
    }


# variable "test" {}  // Empty Variable

 #A Variable can be accessed directly by calling it as var.variableName, but if you're accessing in between a set of strings, then you need to enclose them in quotes and it should referred using ${var.VarName},#In Terraform there is no concept of Single Quotes. 
 #below is the varible list 
 
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
    value = "Welcome to ${var.example_list[1]}  with ${var.example_list[0]} Training and this is our batch ${var.example_list[2]} and the current topic is ${var.example_list[4]}"   // in this we print the list varlible
}

# map variable is a multiple key value pair is nothing but the map variable

variable "example_map" {
  default = {
    "name"      = "santhosh"
    "occuption" = "Job-holder"
    "education" =  "degree"
  }
}

output "example_map_op" {
    value = "Santhosh is ${var.example_map["occuption"]}  and people use to called him  ${var.example_map["name"]} and he completed ${var.example_map["education"]}"             // in this we print the map varlible
}
