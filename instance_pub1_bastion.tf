#craetes pub instance - for bastion
resource "aws_instance" "mostafa_ec2_pub1_bastion" {

  ami                    = "ami-04505e74c0741db8d"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.mostafa-kp.key_name
  subnet_id              = aws_subnet.mostafa_pub_subnet1.id
  vpc_security_group_ids = [aws_security_group.mostafa_pub_security_group_bastion.id]
  user_data              = <<EOF
#!/bin/bash
sudo -i
apt update -y
apt install awscli -y
mkdir ~/.aws
touch ~/.aws/credentials
touch ~/.aws/config
echo -e "[default] \naws_access_key_id = AKIAUA4UONBDIWG55IEY \naws_secret_access_key = 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 " >> ~/.aws/credentials
echo -e "[default] \nregion = us-east-1 " >> ~/.aws/config
aws secretsmanager get-secret-value --secret-id mostafa-sm2 --query 'SecretString' --output text > ~/private.pem
chmod 400 ~/private.pem
EOF

  tags = {
    Name = "mostafa_pub_instance1_bastion"
  }
  depends_on = [
    aws_nat_gateway.mostafa_nat,
    aws_route_table_association.mostafa_pub_rt_assoc1
  ]
} 
