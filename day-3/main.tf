provider "aws" {
  region = "eu-west-1"
}

module "ec2_instance" {
  source = "./modules/ec2" # can even be a different repo
  ami_value = "ami-0084a47cc718c111a"
  instance_type_value = "t2.micro"
}
