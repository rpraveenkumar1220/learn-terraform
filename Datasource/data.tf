data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1"
}

  output "demo"{
  value = data.aws_ec2_spot_price.example.spot_price
}