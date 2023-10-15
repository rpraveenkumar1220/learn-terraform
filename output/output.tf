output "s1"{
value = var.vpc
}


output "s2"{
  value = {
    subnets = var.vpc.main
  }
}


