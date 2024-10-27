variable "aws_region" {
  description = "AWS region where resources are deployed"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
    description = "S3 bucket to hold terraform remote state"
    type = string
    default = "rsschool-devops-tf" 
}

variable "dynamodb_table_name" {
    description = "DynamoDB table name to keep remote state locks"
    type = string
    default = "tf-state-lock-dynamodb" 
}