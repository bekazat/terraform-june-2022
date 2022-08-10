terraform {
  backend "s3" {
    bucket = "azaadmin-bucket"
    key    = "terraform/backend_ex4"
    region = "us-east-1"

  }
}