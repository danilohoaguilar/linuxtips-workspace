terraform {
  backend "s3" {
    bucket       = "hodanlab-terraform"
    key          = "env-dev.tfsate"
    region       = "us-west-2"
    use_lockfile = true
  }
}
