# Terraform Infrastructure Project

This repository contains Terraform configurations to provision cloud infrastructure.  
It is designed to be modular, reusable, and easy to customize for different environments.

---

## 📦 Project Structure

- **main.tf** → Core resources (e.g., VPC, EC2, storage, etc.)
- **variables.tf** → Input variables for customization
- **outputs.tf** → Key outputs after deployment (e.g., IPs, IDs)
- **provider.tf** → Cloud provider configuration
- **terraform.tfvars** → Default variable values (optional)

---

## ✅ Prerequisites

- Terraform `>= 1.5.0`
- Cloud provider CLI installed (AWS CLI, Azure CLI, or gcloud)
- Proper authentication configured (e.g., AWS credentials in `~/.aws/credentials`)

---





