resource "aws_db_instance" "myrds" {
  allocated_storage    = 10
  db_name              = "week4rds"
  engine               = var.engine
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  
  tags = {
    name = "week4rdsisready"
  }
}
resource "aws_db_subnet_group" "db_subnets" {
  name       = "week4-rds-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}
