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
instance_type = "t2.micro"
tags {
Name = "my_server"
}
}
