resource "aws_security_group" "main" {
  name        = "Class-3-SG"
  description = "Allow main inbound traffic"
}


resource "aws_security_group_rule" "ingress_rule" {
  count = 3
  type = "ingress"
  from_port = elemet(var.ingress_ports, count.index)
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id aws_security_group.main.id
}

resource "aws_security_group_rule" "egress_rule" {
  type = "egress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}