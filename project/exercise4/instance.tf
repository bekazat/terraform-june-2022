resource "aws_key_pair" "aza-key" {
  key_name   = "azat-key"
  public_key = file("aza-key.pub")
}

resource "aws_instance" "shell-web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.udemy-pub-1.id
  key_name               = aws_key_pair.aza-key.key_name
  vpc_security_group_ids = [aws_security_group.udemy-sg.id]
  tags = {
    Name      = "shell-key-vm"
    Owner     = "azaadmin"
    Project   = "udemy"
    ManagedBy = "tf"
  }
}

resource "aws_ebs_volume" "vol4udemy" {
  availability_zone = var.ZONE1
  size              = 3
  tags = {
    Name = "extr-vol-for-udemy"
  }
}

resource "aws_volume_attachment" "atch_vol_udemy" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol4udemy.id
  instance_id = aws_instance.shell-web.id
}

output "PublicIP" {
  value = aws_instance.shell-web.public_ip
}

// provisioner "file" {
//    source      = "web.sh"
//   destination = "/tmp/web.sh"
//  }
//
//  provisioner "remote-exec" {
//   inline = [
//      "chmod u+x /tmp/web.sh",
//      "sudo /tmp/web.sh"
//    ]
//
//  }
//
//  connection {
//    user        = var.USER
//    private_key = file("aza-key")
//   host        = self.public_ip
//  }
//


//output "PrivateIP"" {
//    value = aws_instance.shell-vm.private_ip
//}