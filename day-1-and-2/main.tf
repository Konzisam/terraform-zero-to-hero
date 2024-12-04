 #Task 1: - Creating an EC2 instance
  #  provider "aws" {
  #    region = "eu-west-1"  # Set your desired AWS region
  #  }

  #  resource "aws_instance" "example" {
  #    ami           = "ami-0084a47cc718c111a"  # Specify an appropriate AMI ID
  #    instance_type = "t2.micro"
  #  }


# Task 2: - Creating 2 EC2 instances in different regions
# provider "aws" {
#   region = "eu-central-1"
#   alias = "eu-central-1"
# }

# provider "aws" {
#   region = "eu-west-1"
#   alias = "eu-west-1"
# }

# resource "aws_instance" "example1" {
#   ami = "ami-0084a47cc718c111a"
#   instance_type = "t2.micro"
#   provider = aws.eu-west-1 
# }

# resource "aws_instance" "example2" {
#   ami = "ami-0084a47cc718c111a"
#   instance_type = "t2.micro"
#   provider = aws.eu-central-1 
# }

# Task 3: - Creating EC2 instance specifying parameters using variables and output the public ip
# Define an input variable for the EC2 instance type
# variable "instance_type" {
#   description = "EC2 instance type"
#   type        = string
#   default     = "t2.micro"
# }

# # Define an input variable for the EC2 instance AMI ID
# variable "ami_id" {
#   description = "EC2 AMI ID"
#   type        = string
# }

# # Configure the AWS provider using the input variables
# provider "aws" {
#   region      = "eu-west-1"
# }

# # Create an EC2 instance using the input variables
# resource "aws_instance" "example_instance" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
# }

# # Define an output variable to expose the public IP address of the EC2 instance
# output "public_ip" {
#   description = "Public IP address of the EC2 instance"
#   value       = aws_instance.example_instance.public_ip
# }

### Task 4: - Creating EC2 instance specifying parameters using variables and .tfvars
variable "ami_value" {
  description = "value for the ami"
  default = ""
}

variable "instance_value_type" {
  description = "value for instance type"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami = var.ami_value
  instance_type = var.instance_value_type
}

