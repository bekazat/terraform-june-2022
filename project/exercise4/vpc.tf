resource "aws_vpc" "udemy" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostname = "true"
    tags = {
        Name = "udemyprofile"

    }
}

resource "aws_subnet" "udemy-pub-1" {
    vpc_id = aws_vpc.udemy.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "ture"
    availability_zone = "us-east-1"
    tags = {
        Name = "udemy-pub-1"
    }
}
