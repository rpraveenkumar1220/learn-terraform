output "s1"{
value = var.vpc
}


output "s2"{
  value = element(var.vpc["subnets"])
}
