output "role_arn" {
  description = "ARN of thee IAM role"
  value = aws_iam_role.this.arn
}


output "policy_id" {
    description = "ID of the IAM policy"
    value = aws_iam_policy.this.id
}