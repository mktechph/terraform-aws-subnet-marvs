output "outputs_subnet_cidr" {
  value = aws_subnet.subnet.cidr_block
}

output "outputs_subnet_az" {
  value = aws_subnet.subnet.availability_zone
}

output "outputs_internet_gateway_id" {
  value = aws_internet_gateway.igw[count.index].id
}

output "outputs_nat_gateway_id" {
  value = aws_nat_gateway.nat_gw[count.index].id
}

output "outputs_eip_id" {
  value = aws_eip.eip[count.index].id
}