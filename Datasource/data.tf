data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-west-2a"
}

  output "demo"{
  value = data.aws_ec2_spot_price.example.spot_price
}