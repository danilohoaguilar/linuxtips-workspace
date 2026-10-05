data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
resource "aws_network_interface" "exemplo1" {
  subnet_id = aws_
  
}
resource "aws_instance" "exemplo1" {
  provider      = aws
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  tags = {
    Name = local.name #Usando o arquivo locals.tf para chamar as funções
  }
}
