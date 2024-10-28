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