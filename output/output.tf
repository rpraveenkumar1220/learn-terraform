output "s1"{
value = var.vpc
}


output "s2"{
  value = var.vpc.main
}

output "s3"{
  value = var.vpc.main.cidr_block
}

