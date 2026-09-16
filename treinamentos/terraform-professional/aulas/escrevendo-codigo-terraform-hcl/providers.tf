terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

# Second provider using alias
provider "aws" {
  alias  = "east"
  region = "us-east-1"
}