terraform {
  backend "s3" {
    bucket = "hodanlab-terraform"
    key    = "aula-backend.tfsate"
    region = "us-east-1"
  }
}
