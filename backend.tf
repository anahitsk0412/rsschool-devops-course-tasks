terraform {
  backend "s3" {
    encrypt = true
    bucket = "rsschool-devops-tf"
    key = "default/terraform.tfstate"
    dynamodb_table = "tf-state-lock-dynamodb"
    region = "us-east-1"
  }
}