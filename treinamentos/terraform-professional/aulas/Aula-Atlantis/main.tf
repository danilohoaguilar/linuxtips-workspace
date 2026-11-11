module "atlantis_dev-ec2" {
  source     = "git@github-pessoal:danilohoaguilar/linuxtips-tf-modulo-compute?ref=variable_ami"
  name       = "atlantis_dev-ec2"
  env        = "dev"
  custom_ami = "ami-078c5eb58e5695dbc"
}