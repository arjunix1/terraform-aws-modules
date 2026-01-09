output "privateip" {
    value = module.ec2.private_ip
  
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "instance_id" {
  value = module.ec2.instance_id
}


output "vpc_id" {
    value = module.vpc.vpc_id
}


output "cidr_block" {
  value = module.vpc.vpc_cidr
}

output "aws_internet_gateway" {
  value = module.vpc.aws_internet_gateway
}


output "private_subnet" {
  value = module.vpc.private_subnet
}

output "public_subnet" {
    value = module.vpc.public_subnet
}


output "bucket_id" {
    value = module.bucket.bucket_id
}


output "bucket_arn" {
    value = module.bucket.bucket_arn
}


output "bucket_domain_name" {
  value = module.bucket.bucket_domain_name
}


output "bucket_region" {
  value = module.bucket.bucket_region
}


output "db_instance_id" {
    value =  module.rds.db_instance_id
}


output "db_endpoint" {
    value = module.rds.db_endpoint
}


output "policy_id" {
  value = module.iam.policy_id
}


output "role_arn" {
  value = module.iam.role_arn
}