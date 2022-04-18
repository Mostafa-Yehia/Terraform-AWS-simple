#create security group that opens port 22 for all traffic
resource "aws_security_group" "mostafa_pub_security_group_bastion" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.mostafa_vpc.id

  ingress {
    description      = "ssh from anywhere"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    Name = "mostafa_pub_security_group_bastion"
  }
} 


#create security group that opens port 22 and 3000 for vpc only traffic
resource "aws_security_group" "mostafa_prv_security_group_bastion" {
  name        = "port 3000 and allow ssh"
  description = "Allow port 3000 and allow_ssh"
  vpc_id      = aws_vpc.mostafa_vpc.id

  ingress {
    description      = "allow_ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16"]
  }
  ingress {
    description      = "port 3000"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16"]
  }

  tags = {
    Name = "mostafa_prv_security_group_bastion"
  }
} 
