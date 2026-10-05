module "ambiente_dev_compute" {
  source = "../../modules/compute"
  name   = "ambiente_dev"
}

moved {
  from = aws_instance.exemplo1
  to   = module.ambiente_dev.aws_instance.exemplo1
}