provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  
  ami = var.ami_value
  instance_type = var.instance_type_value
}