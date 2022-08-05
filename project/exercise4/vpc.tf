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
    availability_zone = var.ZONE1
    tags = {
        Name = "udemy-pub-1"
    }
}

resource "aws_subnet" "udemy-pub-2" {
    vpc_id = aws_vpc.udemy.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "ture"
    availability_zone = var.ZONE2
    tags = {
        Name = "udemy-pub-2"
    }
}

resource "aws_subnet" "udemy-pub-3" {
    vpc_id = aws_vpc.udemy.id
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.ZONE3
    tags = {
        Name = "udemy-pub-3"
    }
}


resource "aws_subnet" "udemy-priv-1" {
    vpc_id = aws_vpc.udemy.id
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "ture"
    availability_zone = var.ZONE1
    tags = {
        Name = "udemy-priv-1"
    }
}

resource "aws_subnet" "udemy-priv-2" {
    vpc_id = aws_vpc.udemy.id
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_launch = "ture"
    availability_zone = var.ZONE2
    tags = {
        Name = "udemy-priv-2"
    }
}

resource "aws_subnet" "udemy-priv-3" {
    vpc_id = aws_vpc.udemy.id
    cidr_block = "10.0.6.0/24"
    map_public_ip_on_launch = "ture"
    availability_zone = var.ZONE3
    tags = {
        Name = "udemy-priv-3"
    }
}