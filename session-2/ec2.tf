#Every single Terraform Configuration file has a format called .tf

resource "aws_instance" "first_ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}



# Syntax is HashiCorp Configuration Language ( HCL )

# Terraform only has 2 blocks 
# 1. Resource      =  Create and Manage resources
# 2. Data Source 

# Each block expects label, Resource block expects 2 labels

# resource = block
