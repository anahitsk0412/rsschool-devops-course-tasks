variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16" 
  description = "CIDR block of VPC"
}

variable "public_subnets_cidr" {
    description = "Values for CIDRs for public subnets"
    type = list(string)
    default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "privat_subnets_cidr" {
    type = list(string)
    default = [ "10.0.3.0/24", "10.0.4.0/24" ]
    description = "Values for CIDRs for privat subnets"
}