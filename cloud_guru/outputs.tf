output "instance_ip" {
    description = "VM`s Private IP"
    value = aws_instance.my-vm.private_ip
}


### Reserved Keyword (output)
### User-provided variable name (instance_ip)
### Variable config arguments such as variable description and value

######
######   Output variable values are shown on the shell after running terraform apply.
######
######   Output values are like return values that you want to track after a successfull terraform deployment