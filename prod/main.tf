provider "aws" {
  region = "eu-west-1"
  allowed_account_ids = ["${var.allowed_account_ids}"]
}

terraform {
  backend "s3" {
    key = "medium-terraform/prod/terraform.tfstate"
    # ...
  }
}