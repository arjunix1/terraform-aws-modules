output "vpc_id" {
    description = "id of the main vpc"
    value = aws_vpc.mainvpc.id
}

output "vpc_cidr" {
  description = "cidr range"
  value = aws_vpc.mainvpc.cidr_block
}

output "aws_internet_gateway" {
  description = "internet gateway"
  value = aws_internet_gateway.mainigw.id
}

output "public_subnet" {
  description = "pub-subnet"
  value = aws_subnet.public_subnet.id
}

output "private_subnet" {
  description = "private-subnet"
  value = aws_subnet.private_subnet.id
}