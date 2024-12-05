## Day - 4 
### Terraform Backends

We use S3 as a th concept of terraform backends backend, to manage the state of terraform.\
For that we need to define a backend.tf.\
Before defining the backend.tf file we run the main.tf with the s3 and dynamo table defined.

### What is needed
- S3 Bucket,  the `.tfstate` storage.
- A DynamoDB table with pay-per-request billing mode and a single string (S) attribute LockID as the hash key, which can be used for locking mechanisms.

This is to enable locking the terraform state.

### Task 1: - Creating create an S3  bucket and dynamo db table: and configuring terraform backend
- Run terraform `init`, `plan` and `apply`.\
A local terraform.tfstate is created, as usual. However to use the backend, we have to remove it so that the project state is managed by S3

- Create a **backend.tf** with configuration pointing to the bucket and tbale we earlier created.

Now the **.tfstate** file is stored in S3, and the state is centrally maintained from this bucket.

*NOTE: In the above to avoid running terraform init and removing the file, we can create the s3 bucket and dynamo db tables using the console or the aws CLI.\ Below are the command to create using the aws CLI*

### Creating S3 and dynamo db using AWS CLI
For the aabove earlier steps, we can create the S3 and dynamo db using the commandline instead.

```docker
aws s3api create-bucket --bucket samkons-bucket-demo \ 
--region eu-central-1 \
--create-bucket-configuration LocationConstraint=eu-central-1
```

```docker
aws s3api put-bucket-versioning --bucket samkons-bucket-demo \
--versioning-configuration Status=Enabled
```


```docker
aws dynamodb create-table --table-name terraform-lock \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --billing-mode PAY_PER_REQUEST --region eu-central-1
```


#### Commands
- `terraform show`: - 