terraform {
  backend "s3" {
    bucket         = "terraform-demo-411"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
  }
}