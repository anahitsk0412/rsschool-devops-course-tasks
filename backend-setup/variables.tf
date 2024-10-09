variable "aws_region" {
  description = "AWS region where resources are deplyed"
  type = string
  default = "us-east-1"
}

variable "s3_bucket_name" {
    description = "The name of the bucket that keeps terraform state"
    type = string
    default = "rsschool-devops-tf"  
}

variable "dynamodb_table_name" {
  description = "The name of DynamoDB table to keep terraform state lock"
  type = string
  default = "tf-state-lock-dynamodb"
}
