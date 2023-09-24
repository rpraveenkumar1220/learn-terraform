data "aws_instances" "test" {
  instance_state_names = ["running", "stopped"]
}

output "demo"{
  value = data.aws_instances.test.instance_state_names
}