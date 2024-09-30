resource "aws_s3_bucket" "rsschool-devops-tf" {
    bucket = "rsschool-devops-tf"
    acl = "private"

    versioning {
      enabled = true
    }
}