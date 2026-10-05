locals {
  # Calculo Subnet
  cidrsubnet = cidrsubnet(var.cidr_block, 8, 1)
}