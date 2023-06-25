provider "aws" {
  region = "ap-southeast-1"
  # access_key = ""
  # secret_key = ""
}

resource "aws_instance" "myintroec2" {
  ami                    = "ami-0df7a207adb9748c7"
  instance_type          = "t2.micro"
  availability_zone      = "ap-southeast-1a"
  key_name               = "terraform-dev-keypair"
  vpc_security_group_ids = ["*******"]
  tags = {
    Name    = "Terraform-EC2-instance"
    Project = "PoC-IaC-Terraform"
  }
}

