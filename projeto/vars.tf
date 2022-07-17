variable "amis" {
  default = {
    "us-east-1-ubuntu18" = "ami-08d4ac5b634553e16"
  }
}

variable "instance_type" {
  default = {
    "micro" = "t2.micro"
  }
}