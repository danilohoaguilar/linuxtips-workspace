terraform {
  backend "s3" {
    bucket       = "hodanlab-terraform"
    key          = "atlantis-env-dev.tfsate"
    region       = "us-west-2"
    use_lockfile = true
  }
}
