terraform {
    backend "s3" {
        bucket  = "azaadmin-bucket"
        key     = "session-6/dev/terraform.tfstate"
        region  = "us-east-1"
        dynamodb_table = "terraform-state-lock-table"
    }
}
