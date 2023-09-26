data "aws_ami" "instance" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners     = ["973714476881"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.instance.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.SG.id]

  tags = {
    Name = var.name
  }
}

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost, -U https://github.com/rpraveenkumar1220/Roboshop-Ansible.git  roboshop.yml -e env=dev -e role_name=frontend"
    ]
  }
}
resource "aws_security_group" "SG" {
  name        = var.name
  description = "Allow TLS inbound traffic"

  ingress {

    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.name
  }
}

variable "name"{}

