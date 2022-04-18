

#create ng
resource "aws_nat_gateway" "mostafa_nat" {
  allocation_id = aws_eip.mostafa_eip.id
  subnet_id     = aws_subnet.mostafa_pub_subnet1.id

  tags = {
    Name = "mostafa_nat"
  }
  
}
