terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "ec2_tf_behnam" {
  ami           = "ami-079d9017cb651564d"
  instance_type = "t2.micro"
  subnet_id     = "subnet-03f1b73d915b12b0d"

  tags = {
    Name = "Ben-temp-server"
  }
}
