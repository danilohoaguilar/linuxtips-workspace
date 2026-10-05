resource "aws_vpc" "main" {
    cidr_block = var.cidr_block
    tags = {
      Name = locals.name #Usando o arquivo locals.tf para chamar as funções
    }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main
  cidr_block = local.cidrsubnet
  tags = {
    Name = locals.name #Usando o arquivo locals.tf para chamar as funções
  }
}

