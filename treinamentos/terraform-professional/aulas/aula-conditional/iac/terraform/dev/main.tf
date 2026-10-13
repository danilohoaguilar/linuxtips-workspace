module "terraform-linuxtips-module" {
  source = "git@github-pessoal:danilohoaguilar/linuxtips-tf-modulo-compute?ref=for_each"
  instancias = {
    web = {
      instance_type = "t2.micro"
      env           = "prod"
    }
    db = {
      instance_type = "t3.micro"
      env           = "prod"
    }
    cache = {
      instance_type = "t2.micro"
      env           = "prod"
    }
  }
  env = "prod"
}