data "aws_instances" "test" {
  instance_tags = {
    Name = "workstation"
  }
}

output "demo"{
  value = data.aws_instances.test.instance_state_names
}