data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

  output "demo"{
  value = data.aws_ec2_spot_price.example.spot_price
}


data "aws_ec2_instance_types" "test" {

  filter {
    name   = "instance-type"
    values = ["t3.micro", "t3.small"]
  }
}

output "demo1"{
  value = data.aws_ec2_instance_types.test.id
}