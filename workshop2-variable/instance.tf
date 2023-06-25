resource "aws_instance" "dev-ins" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "terraform-dev-keypair-new"
  vpc_security_group_ids = ["*******"]
  tags = {
    Name    = "Terraform-EC2-instance"
    Project = "PoC-IaC-Terraform"
  }
}