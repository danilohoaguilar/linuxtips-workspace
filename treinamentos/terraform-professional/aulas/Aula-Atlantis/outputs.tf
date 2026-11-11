output "ip_adresseses" {
  value = "${module.atlantis_dev-ec2.name-web}: ${module.atlantis_dev-ec2.instance_priv_ip-web}/${module.atlantis_dev-ec2.instance_pub_ip-web}"
}