module "wp_aws" {
  source = "../../infra"
  region = "us-east-1" 
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name = "wp_aws_key"
}

output "WP_Genesis-IP" {
  value = module.wp_aws.Genesis-IP
}

output "WP_Genesis-State" {
  value = module.wp_aws.Genesis-State
}

output "WP_Genesis-Zone" {
  value = module.wp_aws.Genesis-Zone
}

output "WP_Genesis-ID" {
  value = module.wp_aws.Genesis-ID
}

