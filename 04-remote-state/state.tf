terraform {
  backend "s3" {
    bucket = "terraform-k1"
    key    = "04-resources/terraform.tfstate"
    region = "us-east-1"
  }
}