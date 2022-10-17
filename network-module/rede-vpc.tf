#Como na conta do sandbox o limite de criação de VPCs foi excedido (5), vou usar um id já existente e colocar dentro de um data apontando para uma variável.

# resource "aws_vpc" "minha-vpc-maria" {
#   cidr_block = var.bloco[0]
#   tags = {
#     for key, value in var.resource-tags :
#     key => lower(value)
#   }
# }



resource "aws_internet_gateway" "igw-maria" {
  vpc_id = data.aws_vpc.id-vpc-data.id
  tags = {
    for key, value in var.resource-tags :
    key => lower(value)
  }

}


#Por já haver excedido o limeite de eip's, puxei um id de um livre existente na sandbox
# resource "aws_eip" "eip-ec2" {
#   vpc = true
#   tags = {
#      for key, value in var.resource-tags :
#      key => lower(value)
#   }
# }

resource "aws_route_table" "route-table-maria" {
  vpc_id = data.aws_vpc.id-vpc-data.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-maria.id
  }

  tags = {
    for key, value in var.resource-tags :
    key => lower(value)
  }
}

resource "aws_route_table_association" "assoc-table" {
  subnet_id      = aws_subnet.subnet-publica.id
  route_table_id = aws_route_table.route-table-maria.id
}

resource "aws_subnet" "subnet-publica" {
  vpc_id     = data.aws_vpc.id-vpc-data.id
  cidr_block = var.aws_subnet_cidr_block[0]

  tags = {
    for key, value in var.resource-tags :
    key => lower(value)
  }
}