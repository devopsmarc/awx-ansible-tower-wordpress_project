module "db_aws" {
  source = "../../infra"
  region =  "us-east-1"
  ami = "ami-011939b19c6bd1492"
  instance_type = "t2.micro"
  key_name = "db_aws_key"
}
output "DB_Genesis-IP" {
  value = module.db_aws.Genesis-IP
}

output "DB_Genesis-State" {
  value = module.db_aws.Genesis-State
}

output "DB_Genesis-Zone" {
  value = module.db_aws.Genesis-Zone
}

output "DB_Genesis-ID" {
  value = module.db_aws.Genesis-ID
}