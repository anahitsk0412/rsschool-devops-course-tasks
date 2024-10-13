resource "aws_vpc" "rs_vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
      Name = "rs-school-vpc"
    }
  
}