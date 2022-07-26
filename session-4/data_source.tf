data "aws_ami" "amazon_linux_2" {
  #    executable_users = ["self"]
  most_recent = true
  #    name_regex = "aws-nonprod-dev-wordpress-web*"
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  #       filter {
  #        name = "birtualization-type"
  #        values = ["hvm"]
  #    }
}





# Data Source Block is designed to fetch data from pre-existing resources