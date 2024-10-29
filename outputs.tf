output "outputs_subnet_cidr" {
  value = aws_subnet.subnet.cidr_block
}

output "outputs_subnet_az" {
  value = aws_subnet.subnet.availability_zone
}

output "outputs_internet_gateway_id" {
  value = var.subnet_public_bool ? aws_internet_gateway.igw[0].id : null
}

output "outputs_nat_gateway_id" {
  value = var.subnet_nat_bool ? aws_nat_gateway.nat_gw[0].id : null
}

output "outputs_eip_id" {
  value = var.subnet_nat_bool ? aws_eip.eip[0].id : null
}