resource "aws_vpc" "vpc1" {
  cidr_block = var.cidr_vpc
  tags = {
    "Name" = "my-vpc"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = var.cidr_private
  availability_zone = var.zone_private
  tags = {
    "Name" = "private_subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = var.cidr_public
  availability_zone = var.zone_public
  map_public_ip_on_launch = true
  tags = {
    "Name" = "public_subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc1.id
}

resource "aws_default_route_table" "default-rt" {
  default_route_table_id = aws_vpc.vpc1.default_route_table_id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
  }
}
