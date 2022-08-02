resource "aws_instance" "myec2" {
  ami                = ami-052efd3df9dad4825
  instance_type      = "t2.micro"
  key_name           = control-key
  vpc_security_group = ["sg-0475563a95ce8a182"]
  tags = {
    Name = "webserver"
  }
}