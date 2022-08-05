resource "aws_key_pair" "aza-key" {
  key_name   = "azat-key"
  public_key = file("aza-key.pub")
}

resource "aws_instance" "shell-vm" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.aza-key.key_name
  vpc_security_group_ids = ["Control-SG"]
  tags = {
    Name      = "shell-key-vm"
    Owner     = "azaadmin"
    Project   = "udemy"
    ManagedBy = "tf"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]

  }

  connection {
    user        = var.USER
    private_key = file("aza-key")
    host        = self.public_ip
  }
}

output "PublicIP" {
  value = aws_instance.shell-vm.public_ip
}

//output "PrivateIP"" {
//    value = aws_instance.shell-vm.private_ip
//}