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

output "demo3"{
value="value of sample,sample1 & sample2 is - ${var.sample},${var.sample1}&${var.sample2}"
}


variable "plain"{
default="Devops"
}

variable "list"{
default=[
        "Devops",
        "DataScience",
         "AI"]
}

variable "map"{
default=[
   Devops=[
          "Online",
           2000,
           "3 months"
           ]
   DataScience=[
           "Offline",
           30000,
           "2 months"
   ]
   AI=[
            "Online"
            43000,
            "6 months"
   ]
   ]
}


output "course1"{
value=var.plain
}

output "course2"{
value=var.list
}

output "course3"{
value=var.map
}
