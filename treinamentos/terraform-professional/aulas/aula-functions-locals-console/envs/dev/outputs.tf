# output "instance_priv_ip" {
#   description = "IP privado da maquina virtual"
#   value = module.ambiente_dev.instance_priv_ip
# }

# output "instance_pub_ip" {
#   description = "IP publico da maquina virtual"
#   value = module.ambiente_dev.instance_pub_ip
# }


output "ip_adresseses" {
  value = "${module.ambiente_dev_compute.name}: ${module.ambiente_dev.instance_priv_ip}/${module.ambiente_dev.instance_pub_ip}"
}