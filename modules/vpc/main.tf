# Main VPC
resource "aws_vpc" "rs_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "rs-school-vpc"
  }
}

# 2 Public subnets
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.rs_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  map_public_ip_on_launch = true

  tags = {
    Name = "rs-public-subnet-1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.rs_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  map_public_ip_on_launch = true

  tags = {
    Name = "rs-public-subnet-2"
  }
}

# 2 Privat subnets
resource "aws_subnet" "privat_subnet_1" {
  vpc_id            = aws_vpc.rs_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "rs-privat-subnet-1"
  }
}

resource "aws_subnet" "privat_subnet_2" {
  vpc_id            = aws_vpc.rs_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "rs-privat-subnet-2"
  }
}
