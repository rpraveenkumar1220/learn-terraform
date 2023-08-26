variable "sample"{
default=100
}

variable "sample1"{
default="Hello world"
}


output "demo"{
value=var.sample
}

output "demo1"{
value=var.sample1
}

output "demo2"{
value="value of sample & sample1 is - ${var.sample} & ${var.sample1}"
}