resource "aws_instance" "my-instance" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type

  count =3 

  tags = {
    Name = "ubuntu-myserver-${count.index}"
  }
}