terraform {
    backend "s3" {
     bucket = "terraform-privacera-dev"
     region = "us-east-1"
     key   = "test.terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "XYZ63737ZKSKSK"  #here we can use IAM role as well instead of accesskey/secret_key
  secret_key = "5vHDHDJOOjshhs44sksjshsjjsj"
}

data "aws_vpc" "selected" {
  filter {
    values = ["VPC-Main"]
  }
}
resource "aws_instance" "web_server" {
ami = "ami-061392db613a6357b"
key_name = "devops_key"    
instance_type = "t2.micro"
  root_block_device {
  volume_type = "gp2"
  volume_size = 16G
  delete_on_termination = "true"
}    
tags {
Name = "my_server"    
}
}
