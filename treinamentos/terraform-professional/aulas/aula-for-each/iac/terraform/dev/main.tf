module "terraform-linuxtips-module" {
  source = "git@github-pessoal:danilohoaguilar/linuxtips-tf-modulo-compute?ref=dynamic_block"
  instancias = {
    web = {
      instance_type = "t2.micro"
      env           = "prod"
    }
    db = {
      instance_type = "t3.micro"
      env           = "prod"
      volume_extras = {
        sdb = {
          device_name = "/dev/sdb"
          volume_size = "50"
        }
      }
    }
    cache = {
      instance_type = "t2.micro"
      env           = "prod"
    }
  }
  env = "prod"
}