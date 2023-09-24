data "aws_instances" "test" {

  instance_state_names = ["stopped"]

  instance_tags = {
    Name = "workstation"
  }
}

output "demo"{
  value = length(data.aws_instances.test.instance_state_names)
}