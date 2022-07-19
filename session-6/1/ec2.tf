resource "aws_instance" "main" {
  # count = 5
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = var.key_name
  tags = {
    Name = "${var.env}-instance"                # dev-instance, qa-instance
    Name2 = format("%s-instance", var.env)      # dev-instance, qa-instance 
  }
}
resource "aws_security_group" "main" {
    name = "${var.env}-instance-sg"
    description = "This is a SG for my EC2"
}

# make it functional
# make it dynamic
# make it beautiful