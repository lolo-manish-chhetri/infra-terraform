terraform {
  required_version = ">= 1.6.0"
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  type        = string
  description = "AWS region for dev"
  default     = "us-east-1"
}

output "example" {
  value = "dev-environment-ready"
}


