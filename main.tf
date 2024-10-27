resource "aws_subnet" "subnet" {
  vpc_id     = var.subnet_vpc
  cidr_block = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = var.subnet_tags
}