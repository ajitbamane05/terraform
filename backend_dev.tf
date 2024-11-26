terraform {
  backend "s3" {
    bucket = "terraform-tf-state-bucket-ajit"
    key    = "dev/terrraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform-dynamodb-ajit"
  }
}