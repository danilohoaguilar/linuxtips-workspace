module "terraform-linuxtips-module" {
  source  = "app.terraform.io/daniloho/terraform/aws"
  version = "1.1.0"
  # insert required variables here
  name = "aula-terraform-registry-publish"
  env = "dev"
}

module "s3-bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"
  version       = "5.17.0"
  bucket        = "logs-hodanlabs-test"
  force_destroy = true
}