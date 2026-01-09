output "instance_id" {
    description = "ID of the instance"
    value = aws_instance.my-instance[*].id
}

output "public_ip" {
    description = "public IP of the instance"
    value = aws_instance.my-instance[*].id
}

output "private_ip" {
    description = "private IP of the instance"
    value = aws_instance.my-instance[*].id
}