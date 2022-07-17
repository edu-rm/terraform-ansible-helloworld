resource "aws_security_group" "terraform_security_group" {
  name        = "terraform_security_group"
  description = "Grupo de seguranca para a maquina do terraform"
  ingress {
    cidr_blocks      = [
      "0.0.0.0/0",
    ]
    description      = "Para acessar a maquina com todas as portas"
    from_port        = 0
    ipv6_cidr_blocks = [
      "::/0",
    ]
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }

  egress {
    cidr_blocks      = [
      "0.0.0.0/0",
    ]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = [
      "::/0",
    ]
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }

  tags = {
    Name = "acesso_geral"
  }
}
