list "aws_instance" "import-prod" {
  provider = aws
  config {
    region = "us-west-2"
    filter {
      name   = "tag:imported"
      values = ["false"]
    }
    filter {
      name   = "instance-state-name"
      values = ["running"]
    }
  }
}
