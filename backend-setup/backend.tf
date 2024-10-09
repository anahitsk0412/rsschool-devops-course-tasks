resource "aws_s3_bucket" "rsschool-devops-tf" {
  bucket = var.s3_bucket_name
  acl    = "private"
  force_destroy = true

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
    name = var.dynamodb_table_name
    hash_key = "LockID"
    write_capacity = 20
    read_capacity = 20

    attribute {
      name = "LockID"
      type = "S"
    }

    tags = {
        Name = "Terraform Lock Table"
        Environment = "Dev"
    }
  
}