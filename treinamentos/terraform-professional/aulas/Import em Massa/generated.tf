# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "import-prod_0" {
  provider                             = aws
  ami                                  = "ami-0413c9aa513b49c44"
  associate_public_ip_address          = true
  availability_zone                    = "us-west-2a"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = true
  force_destroy                        = null
  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = 0
  key_name                             = "danilo-desktop-pc"
  monitoring                           = false
  placement_partition_number           = 0
  private_ip                           = "172.31.44.53"
  region                               = "us-west-2"
  secondary_private_ips                = []
  security_groups                      = ["default"]
  source_dest_check                    = true
  subnet_id                            = "subnet-06d65ebbc7b3aeec8"
  tags = {
    Name     = "teste-import-bulk"
    imported = "true"
  }
  tags_all = {
    Name     = "teste-import-bulk"
    imported = "true"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-0f0bdc1f8f3408fa9"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }
  credit_specification {
    cpu_credits = "unlimited"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}

import {
  to       = aws_instance.import-prod_0
  provider = aws
  identity = {
    account_id = "133414345733"
    id         = "i-0acfd356dd8424c0e"
    region     = "us-west-2"
  }
}

resource "aws_instance" "import-prod_1" {
  provider                             = aws
  ami                                  = "ami-0413c9aa513b49c44"
  associate_public_ip_address          = true
  availability_zone                    = "us-west-2a"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = true
  force_destroy                        = null
  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = 0
  key_name                             = "danilo-desktop-pc"
  monitoring                           = false
  placement_partition_number           = 0
  private_ip                           = "172.31.34.92"
  region                               = "us-west-2"
  secondary_private_ips                = []
  security_groups                      = ["default"]
  source_dest_check                    = true
  subnet_id                            = "subnet-06d65ebbc7b3aeec8"
  tags = {
    Name     = "teste-import-bulk"
    imported = "true"
  }
  tags_all = {
    Name     = "teste-import-bulk"
    imported = "true"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-0f0bdc1f8f3408fa9"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }
  credit_specification {
    cpu_credits = "unlimited"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}

import {
  to       = aws_instance.import-prod_1
  provider = aws
  identity = {
    account_id = "133414345733"
    id         = "i-0b641704428a1d118"
    region     = "us-west-2"
  }
}

resource "aws_instance" "import-prod_2" {
  provider                             = aws
  ami                                  = "ami-0413c9aa513b49c44"
  associate_public_ip_address          = true
  availability_zone                    = "us-west-2a"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = true
  force_destroy                        = null
  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = 0
  key_name                             = "danilo-desktop-pc"
  monitoring                           = false
  placement_partition_number           = 0
  private_ip                           = "172.31.33.182"
  region                               = "us-west-2"
  secondary_private_ips                = []
  security_groups                      = ["default"]
  source_dest_check                    = true
  subnet_id                            = "subnet-06d65ebbc7b3aeec8"
  tags = {
    Name     = "teste-import-bulk"
    imported = "true"
  }
  tags_all = {
    Name     = "teste-import-bulk"
    imported = "true"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-0f0bdc1f8f3408fa9"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }
  credit_specification {
    cpu_credits = "unlimited"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}

import {
  to       = aws_instance.import-prod_2
  provider = aws
  identity = {
    account_id = "133414345733"
    id         = "i-0c8c154ed7ac167ce"
    region     = "us-west-2"
  }
}


