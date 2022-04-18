


#creates prv instance - for bastion
resource "aws_instance" "mostafa_ec2_prv1_bastion" {
  ami                    = "ami-04505e74c0741db8d"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.mostafa-kp.key_name
  subnet_id              = aws_subnet.mostafa_prv_subnet1.id
  vpc_security_group_ids = [aws_security_group.mostafa_prv_security_group_bastion.id]
  tags = {
    Name = "mostafa_prv_instance1_bastion"
  }
} 
