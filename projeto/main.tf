provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "maquina_wp" {
  ami = "${var.amis["us-east-1-ubuntu18"]}"
  instance_type = "${var.instance_type.micro}"
  key_name = "terraform"
  tags = {
    Name = "maquina_ansible_com_worpress"
  }
  vpc_security_group_ids = ["${aws_security_group.terraform_security_group.id}"]
}
