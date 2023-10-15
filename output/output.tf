output "s1"{
value = var.vpc
}


output "s2"{
  value = {
    subnets = var.vpc["subnets"]
  }
}

output "s3"{
  value = {
    subnets = var.vpc["subnets(public)"]
  }
}
