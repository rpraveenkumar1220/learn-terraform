data "aws_ami" "instance" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.instance.id
  instance_type = "t3.micro"

  tags = {
    Name = "Test"
  }
}

resource "aws_security_group" "SG" {
  name        = "Test_SG"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = " SSH "
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}