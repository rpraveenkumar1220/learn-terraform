variable "sample"{
default=100
}

variable "sample1"{
default="Hello world"
}


output "demo"{
value=var.sample
value=var.sample1
}