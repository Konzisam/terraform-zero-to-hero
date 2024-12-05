terraform {
  backend "s3" {
    bucket = "samkons-bucket-demo"
    region = "eu-central-1"
    key = "samkons/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}
