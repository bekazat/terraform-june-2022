terraform {
    backend "s3" {
        bucket  = "azaadmin-bucket"
        key     = "session-5/terraform.tfstate"
        region  = "us-east-1"
        dynamodb_table = "terraform-state-lock-table"
    }
}



# terraform state lock prevents from accidental Apply or Destroy command or State change.
# It will make sure one apply or destroy at the time
