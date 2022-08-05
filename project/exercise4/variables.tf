/// Create key pair locally
/// Push it to instance

#resource "aws_key_pair" "aza-key" {
#   key_name = "aza-key"
#   public_key = 
#}

variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "ZONE2" {
  default = "us-east-1b"
}

variable "ZONE3" {
  default = "us-east-1c"
}
variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-090fa75af13c156b4"
    us-east-2 = "ami-051dfed8f67f095f5"
  }
}

variable "USER" {
  default = "ec2-user"
}