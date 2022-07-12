resource "aws_instance" "first_ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.main.id ]
}

# Ctl / to comment/uncomment everything
# Ctl +F = Find String

# Reference to resource
# 1. aws_security_group = first label
# 2. main = second label
# 3. id = attribute

# What goes inside ""
# - String
# - Hard Coded Value
# - Static Value

# Reference is Dynamic
# In Terraform Dynamic do not use ""

#
# What is a List?
# Fruit = [ apple, orange, banana ]
# Car = [Ford, BMW, Lexus]