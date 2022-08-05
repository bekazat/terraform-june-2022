resource "aws_instance" "udemy-instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "control-key"
  vpc_security_group_ids = ["Control-SG"]
  tags = {
    Name      = "udemy-vm"
    ManagedBy = "tf"
    Owner     = "azaadmin"
    Project   = "terraform"
  }
}