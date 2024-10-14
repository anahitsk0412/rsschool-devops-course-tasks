resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.rs_vpc.id

  tags = {
    Name = "Public Routes Table"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.rs_vpc.id

  tags = {
    Name = "Private Routes Table"
  }
}

resource "aws_route" "public_ig_route" {
  route_table_id = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.rs_igw.id 
}



# Associate public subnets with public route_table
resource "aws_route_table_association" "public_subnet_1_association" {
    subnet_id = aws_subnet.public_subnet_1.id
    route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_2_association" {
    subnet_id = aws_subnet.public_subnet_2.id
    route_table_id = aws_route_table.public_rt.id
}


# Associate private subnets with private route_table
resource "aws_route_table_association" "private_subnet_1_association" {
  subnet_id = aws_subnet.privat_subnet_1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_subnet_2_association" {
  subnet_id = aws_subnet.privat_subnet_2.id
  route_table_id = aws_route_table.private_rt.id
}