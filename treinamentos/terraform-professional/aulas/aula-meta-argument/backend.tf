terraform {
  backend "s3" {
    bucket       = "hodanlab-terraform"
    key          = "aula-meta-argument.tfsate"
    region       = "us-west-2"
    use_lockfile = true
  }
}
