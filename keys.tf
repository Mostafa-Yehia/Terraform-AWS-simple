


resource "tls_private_key" "mostafa_tls" {
  algorithm = "RSA"
}

resource "aws_key_pair" "mostafa-kp" {
  key_name   = "mostafa-keypair"
  public_key = tls_private_key.mostafa_tls.public_key_openssh
  tags = {
    Name = "mostafa-kp"
  }
}
resource "aws_secretsmanager_secret" "mostafa-sm2" {
  name = "mostafa-sm2"
}

resource "aws_secretsmanager_secret_version" "mostafa-smv" {
  secret_id     = aws_secretsmanager_secret.mostafa-sm2.id
  secret_string = tls_private_key.mostafa_tls.private_key_pem
} 
