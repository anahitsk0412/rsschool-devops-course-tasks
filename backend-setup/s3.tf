resource "aws_s3_bucket" "rsschool-devops-tf" {
  bucket        = var.s3_bucket_name
  acl           = "private"
  force_destroy = true

  tags = {
    Name        = "Terraform state bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "rsschool-devops-tf" {
  bucket = aws_s3_bucket.rsschool-devops-tf.id
  versioning_configuration {
    status = "Enabled"
  }
}
