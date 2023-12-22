resource "aws_instance" "myinstance" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  key_name      = "admin-key"

  tags = {
    Name = "myinstance"
  }
}
