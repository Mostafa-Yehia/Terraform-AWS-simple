




# Create a private route table association
resource "aws_route_table_association" "mostafa_prv_rt_assoc1" {
  subnet_id      = aws_subnet.mostafa_prv_subnet1.id
  route_table_id = aws_route_table.mostafa_prv_rt1.id
}

# Create a public route table association
resource "aws_route_table_association" "mostafa_prv_rt_assoc2" {
  subnet_id      = aws_subnet.mostafa_prv_subnet2.id
  route_table_id = aws_route_table.mostafa_prv_rt1.id
}
