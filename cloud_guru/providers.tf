provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "new_vm" {
	ami = "ami-0be2609ba883822ec"
	subnet_id = "subnet-0dd278def2114f769"
	instance_type = "t3.micro"
	tags = {
		Name = "my-first-tf-node"
	}
}


