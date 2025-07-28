resource "aws_vpc" "main" {
  cidr_block = var.vpc_config[0].cidr_block
  enable_dns_support = var.vpc_config[0].enable_dns_support
  enable_dns_hostnames = var.vpc_config[0].enable_dns_hostnames
  tags = local.common_tags
}


resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_config[0].cidr_block
  availability_zone       = var.subnet_config[0].availability_zone
  map_public_ip_on_launch = var.subnet_config[0].auto_assign_public_ip
  tags                    = local.common_tags
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_config[1].cidr_block
  availability_zone       = var.subnet_config[1].availability_zone
  map_public_ip_on_launch = var.subnet_config[1].auto_assign_public_ip
  tags                    = local.common_tags
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_config[2].cidr_block
  availability_zone       = var.subnet_config[2].availability_zone
  map_public_ip_on_launch = var.subnet_config[2].auto_assign_public_ip
  tags                    = local.common_tags
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_config[3].cidr_block
  availability_zone       = var.subnet_config[3].availability_zone
  map_public_ip_on_launch = var.subnet_config[3].auto_assign_public_ip
  tags                    = local.common_tags
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id
  tags   = local.common_tags
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id
  tags   = local.common_tags
}


resource "aws_route_table_association" "public_subnet_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_subnet_1" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_subnet_2" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_rt.id
}
