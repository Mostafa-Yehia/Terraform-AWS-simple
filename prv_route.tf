



# Create a private route
resource "aws_route_table" "mostafa_prv_rt1" {
  vpc_id = aws_vpc.mostafa_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.mostafa_nat.id
  }

  tags = {
    Name = "mostafa_prv_rt1"
  }
} 
