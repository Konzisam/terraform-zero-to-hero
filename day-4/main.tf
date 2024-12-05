provider "aws" {
  region = "eu-central-1"
}

# resource "aws_s3_bucket" "s3_bucket" {
#   bucket = "samkons-bucket-demo"
# }

# # cretae dynamo db
# resource "aws_dynamodb_table" "terraform_lock" {
#   name = "terraform-lock"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }