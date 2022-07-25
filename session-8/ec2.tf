resource "aws_instance" "main" {
    count = 1
    ami = data.aws_ami.amazon_linux_2.image_id
    instance_type = 
}