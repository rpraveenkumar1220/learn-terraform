data "aws_instances" "test" {

  instance_state = ["stopped"]

  instance_tags = {
    Name = "workstation"
  }
}

output "demo"{
  value = length(data.aws_instances.test.instance_state)
}