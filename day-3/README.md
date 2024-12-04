Why use terrraform modules?
- **Modularity:** - each module handles a specific piece of funtionality such as EC2 instance, databases enabling creating of small self contained components.
- **Reusability:** - Reusable code instead of writing similar code for projects
- **Scalability:** - As infrastracture growm newer modules can be creating, and th eocde can be cleanly maintained and organized
- **Security and encapsulation:** - Eg. creating a module launcing EC2 with predefined securoity groups and other security configs, ensuring consistency

### Task 4: - Creating EC2 instance specifying parameters using variables and .tfvars
In the main.tf, we have:
```hcl
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

```

In the terraform.tfvars, we have:

```
hcl
ami_value = "ami-0084a47cc718c111a"
instance_value_type = "t2.micro"
```