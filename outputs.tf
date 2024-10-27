output "outputs_subnet_name" {
  value = var.subnet_name
}

output "outputs_subnet_cidr" {
  value = aws_subnet.subnet.cidr_block
}

output "outputs_subnet_az" {
  value = aws_subnet.subnet.availability_zone
}