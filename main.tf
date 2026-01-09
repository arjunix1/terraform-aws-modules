module "ec2" {
    source = "./modules/ec2"
}


module "vpc" {
    source = "./modules/vpc"
}

module "bucket" {
    source = "./modules/bucket"
}


module "rds" {
    source = "./modules/rds"

    engine = "mysql"
    instance_class = "db.t3.micro"
    storage = 20
    username = "arjun"
    password = "myfirstdbinstance"
    subnet_ids = [module.vpc.private_subnet]

}

module "iam" {
  source = "./modules/iam"
  role_name = "app-server-role"
  policy_json = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["s3:ListBucket", "s3:GetObject"],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
