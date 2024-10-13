resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.rs_vpc.id

  route = {
    cidr_block = "0.0.0/0"
    gateway_id = aws_internet_gateway.rs_igw.id
  }

  tags = {
    Name = "Public Routes Table"
  }
}

resource "aws_route_table_association" "public_subnet_1_association" {
    subnet_id = aws_subnet.public_subnet_1.id
    route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_2_association" {
    subnet_id = aws_subnet.public_subnet_2.id
    route_table_id = aws_route_table.public_rt.id
}