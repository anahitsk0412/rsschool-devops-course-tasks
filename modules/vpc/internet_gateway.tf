resource "aws_internet_gateway" "rs_igw" {
  vpc_id = aws_vpc.rs_vpc.id

  tags = {
    Name = "RS InternatGateway"
  }
}