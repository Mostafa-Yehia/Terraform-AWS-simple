#create a public subnet
resource "aws_subnet" "mostafa_pub_subnet1" {
  vpc_id     = aws_vpc.mostafa_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "mostafa_pub_subnet1"
  }
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
}

# Create a private subnet
resource "aws_subnet" "mostafa_prv_subnet1" {
  vpc_id     = aws_vpc.mostafa_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "mostafa_prv_subnet1"
  }
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false
}

# Create a public subnet
resource "aws_subnet" "mostafa_pub_subnet2" {
  vpc_id     = aws_vpc.mostafa_vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "mostafa_pub_subnet2"
  }
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
}

# Create a private subnet
resource "aws_subnet" "mostafa_prv_subnet2" {
  vpc_id     = aws_vpc.mostafa_vpc.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "mostafa_prv_subnet2"
  }
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false
}
