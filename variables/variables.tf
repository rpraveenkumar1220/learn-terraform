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
default={
   Devops={
         mode="Online"
         fee=2000
         duration="3 months"
           }
   DataScience={
           mode="Offline"
           fee=30000
           duration="2 months"
   }
   AI={
           mode="Online"
            fee=43000
            duration="6 months"
   }
   Java=[ "Online", 20000, "3 months"]
   }
}


output "course1"{
value=var.plain
}

output "course2"{
value=var.list[2]
}

output "course3"{
value=var.map["Devops"]
}

output "course4"{
value=var.map.Java
}


variable "env"{}
variable "url"{}

output "env"{
value=var.env
}

output "url"{
value=var.url
}