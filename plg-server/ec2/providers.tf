provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::547530256801:role/shs-ue1-infra-tf-exec-role"
  }
}