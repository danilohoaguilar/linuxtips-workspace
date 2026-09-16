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

data "aws_ami" "ubuntu-east" {
  provider    = aws.east
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

removed {
  from = aws_instance.ubuntu-west
  lifecycle {
    destroy = false
  }
}


resource "aws_instance" "ubuntu-east" {
  provider      = aws.east
  ami           = data.aws_ami.ubuntu-east.id
  instance_type = var.instance_type

  tags = {
    Name = "Ubuntu-east"
  }
}