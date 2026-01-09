AWS Infrastructure Modules 🚀
This repository contains a series of Terraform modules designed to teach and demonstrate core AWS services. Each week introduces a new module focusing on compute, networking, storage, databases, and identity management.

📚 Project Overview
The project is structured into weekly modules:
- EC2 (Compute Basics) – Launch an EC2 instance with configurable inputs.
- VPC (Networking Fundamentals) – Create a custom VPC with subnets, route tables, and an Internet Gateway.
- S3 (Storage + Security) – Provision an S3 bucket with versioning, encryption, and lifecycle rules.
- RDS (Database Automation) – Deploy a managed MySQL/Postgres database inside the VPC.
- IAM (Identity & Access Management) – Create IAM roles, policies, and users.

🛠️ Modules
Week 1 – EC2 Module
- Inputs: ami, instance_type, tags
- Outputs: instance_id, public_ip, private_ip
Week 2 – VPC Module
- Inputs: cidr_block, subnet_count, tags
- Outputs: vpc_id, subnet_ids
Week 3 – S3 Module
- Inputs: bucket_name, versioning, tags
- Outputs: bucket_arn, bucket_domain_name
Week 4 – RDS Module
- Inputs: engine, instance_class, allocated_storage, username, password
- Outputs: db_instance_id, endpoint
Week 5 – IAM Module
- Inputs: role_name, policy_json
- Outputs: role_arn, policy_id

⚙️ Prerequisites
- Terraform (terraform.io in Bing) v1.0+
- AWS account with programmatic access (Access Key & Secret Key)
- Configured AWS CLI (aws configure)

🚀 Usage
Clone the repository and navigate to the desired module:
git clone https://github.com/arjunix1/aws-infra-modules.git
cd aws-infra-modules/week1-ec2
terraform init
terraform apply


Each module can be run independently. Update the variables.tf file or pass inputs via CLI.

📈 Learning Outcomes
- Understand Infrastructure as Code (IaC) principles.
- Gain hands-on experience with AWS core services.
- Learn how to build modular, reusable Terraform code.
- Practice security best practices (IAM, encryption, private subnets).

🧑‍💻 Author
Created by Arjun <3
Feel free to connect on LinkedIn or contribute via pull requests!






