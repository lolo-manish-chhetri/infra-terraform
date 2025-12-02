terraform {
  backend "s3" {
    bucket         = "CHANGE_ME-prod-terraform-state"
    key            = "envs/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "CHANGE_ME-terraform-locks"
    encrypt        = true
  }
}


