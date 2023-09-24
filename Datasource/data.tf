data "aws_instances" "test" {

  instance_state_names = ["running"]

  instance_tags = {
    Name = "workstation"
  }
}

output "demo"{
  value = length(data.aws_instances.test.instance_state_names)
}