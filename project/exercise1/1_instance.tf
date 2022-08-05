provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = ""
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "control-key"
  vpc_security_group_ids = ["Conrol-SG"]
  tags = {
    Name        = "dev-instance"
    Owner       = "bekazat"
    Environment = "dev"
  }

}