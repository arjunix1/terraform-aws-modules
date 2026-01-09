output "db_instance_id" {
  value = aws_db_instance.myrds.id
}

output "db_endpoint" {
  value = aws_db_instance.myrds.endpoint
}