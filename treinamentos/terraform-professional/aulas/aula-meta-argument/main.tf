data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    # Mudando para forçar a troca de SO para eliminar a maquina antiga e criar a nova
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    # values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-resolute-26.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical

}

resource "aws_instance" "db" {
  provider      = aws
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  region        = "us-west-2"
  # lifecycle {
  #   prevent_destroy = true
  # }
  lifecycle {
    ignore_changes = [
      ami
    ]
  }
  tags = {
    Name = "Servidor DB"
    Env  = "Prod"
  }
}


resource "aws_instance" "web" {
  provider      = aws
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  region        = "us-west-2"
  depends_on = [
    aws_instance.db
  ]
  lifecycle {
    create_before_destroy = true
    replace_triggered_by = [
      aws_instance.db.tags
    ]
  }
  tags = {
    Name = "Servidor Web"
  }
}
