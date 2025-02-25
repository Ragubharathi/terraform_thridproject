terraform {
  backend "s3" {
    bucket = "bala-demo-terraform-s3-xyz"
    region = "ap-south-1"
    key = "bala/terraform.tfstate"
  }
}
