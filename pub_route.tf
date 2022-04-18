


# Create a public route
resource "aws_route_table" "mostafa_pub_rt1" {
  vpc_id = aws_vpc.mostafa_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mostafa_igw.id
  }
  tags = {
    Name = "mostafa_pub_rt1"
  }
} 
