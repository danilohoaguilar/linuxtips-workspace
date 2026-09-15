terraform {
  backend "s3" {
    bucket = "hodanlab-terraform"
    key    = "aula-backend.tfsate"
    region = "us-west-2"
    use_lockfile = true
  }
}
