terraform {
  backend "s3" {
    bucket         = "crmterrformstate"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-2"        
    dynamodb_table = "terraform-state-locks"
  }
}

provider "aws" {
  region = var.region
}
