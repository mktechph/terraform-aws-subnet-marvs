resource "aws_subnet" "subnet" {
  vpc_id            = var.subnet_vpc
  cidr_block        = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = var.subnet_tags
}

resource "aws_internet_gateway" "igw" {
  count  = var.subnet_public_bool ? 1 : 0
  vpc_id = var.subnet_vpc

  tags = var.igw_tags
}


resource "aws_nat_gateway" "nat_gw" {
  count         = var.subnet_nat_bool ? 1 : 0
  allocation_id = aws_eip.eip[count.index].id
  subnet_id     = aws_subnet.subnet.id

  tags = var.nat_tags

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_eip" "eip" {
  count  = var.subnet_nat_bool ? 1 : 0
  domain = "vpc"
  tags   = var.eip_tags
}