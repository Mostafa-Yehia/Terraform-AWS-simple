



resource "aws_eip" "mostafa_eip" {
  vpc = true
  tags = {
    Name = "mostafa_eip"
  }
}
