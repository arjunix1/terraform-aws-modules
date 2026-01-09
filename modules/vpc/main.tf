resource "aws_vpc" "mainvpc" {
  cidr_block = var.cidr

  tags = {
    Name = "main-vpc"
  }
}

resource "aws_internet_gateway" "mainigw" {
  vpc_id = aws_vpc.mainvpc.id

  tags = {
    Name = "main-igw"
  }
}

resource "aws_egress_only_internet_gateway" "mainegress" {
  vpc_id = aws_vpc.mainvpc.id

  tags = {
    Name = "main-egress"
  }
}

resource "aws_default_route_table" "mainroute" {
  default_route_table_id = aws_vpc.mainvpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mainigw.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.mainegress.id
  }

  tags = {
    Name = "myroutetable"
  }
}


resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = "10.0.0.0/25"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = "10.0.0.128/25"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "private-subnet"
  }
}
