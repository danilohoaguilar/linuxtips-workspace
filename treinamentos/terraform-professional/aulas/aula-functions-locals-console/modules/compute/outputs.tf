output "name" {
  description = "IP privado da maquina virtual"
  value = aws_instance.exemplo1.tags.Name
}

output "instance_priv_ip" {
  description = "IP privado da maquina virtual"
  value = aws_instance.exemplo1.private_ip
}

output "instance_pub_ip" {
  description = "IP publico da maquina virtual"
  value = aws_instance.exemplo1.public_ip
}
