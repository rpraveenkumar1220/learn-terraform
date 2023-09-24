data "aws_instances" "test" {
  instance_type = "t3.medium"
  availabilty_zone = "us-east-1"
}

output "demo"{
  value = data.aws_instances.test.instance_state_names
}