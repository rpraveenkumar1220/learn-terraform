variable "sample"{
default=100
}

variable "sample1"{
default="Hello world"
}

variable "sample2"{
default=true
}


output "demo"{
value=var.sample
}

output "demo1"{
value=var.sample1
}

output "demo2"{
value=var.sample2
}

output "demo2"{
value="value of sample,sample1 & sample2 is - ${var.sample},${var.sample1}&${var.sample2}"
}