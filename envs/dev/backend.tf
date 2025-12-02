terraform {
  backend "s3" {
    bucket         = "CHANGE_ME-dev-terraform-state"
    key            = "envs/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "CHANGE_ME-terraform-locks"
    encrypt        = true
  }
}


