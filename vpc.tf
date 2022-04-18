



# Create a VPC
resource "aws_vpc" "mostafa_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "mostafa_vpc"
  }
  enable_dns_support = true
  enable_dns_hostnames = true
}

