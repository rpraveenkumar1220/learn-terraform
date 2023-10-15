output "s1"{
value = var.vpc
}


output "s2"{
  count = lenght(var.vpc)
  value = element(var.vpc["subnets"], count.index)
}
