terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
    # AWS credentials should be provided via:
    # - AWS CLI configuration (~/.aws/credentials)
    # - Environment variables (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY)
    # - IAM roles for EC2 instances or other AWS services
}

resource "aws_instance" "my_ec2_instance" {
    ami = "ami-0018b373aba829819"
    instance_type = "t3.micro"
    tags = {
        Name = "MyFirstTerraformInstance"
    }
}

resource "aws_vpc" "my_vpc" {
        cidr_block = "10.0.0.0/16 "
        tags = {
            Name = "MyFirstTerraformVPC"
        }
  }

    
