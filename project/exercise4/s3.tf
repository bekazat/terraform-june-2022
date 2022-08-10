resource "aws_s3_bucket" "my_bucket" {
    acl = "private"
    name = "mys3bucket"
    region = "us-east-1"
}

resource "aws_eip" "my_static_ip_address" {
    vpc = true
}