resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  subnet_id              = aws_subnet.subnet-0a5ccb1fbae4fc78c.id
  key_name               = var.key_name
  tags = {
    Name = "${var.env}-instance"                # dev-instance, qa-instance
    Name2 = format("%s-instance", var.env)      # dev-instance, qa-instance 
  }
}