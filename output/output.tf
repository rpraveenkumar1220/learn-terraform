output "s1"{
value = element(var.vpc["cidr_block"],count.index)
}

