variable "subnet_name" {
  description = "The name of the Subnet."
  type        = string
}

variable "subnet_vpc" {
  description = "The VPC ID."
  type        = string
}

variable "subnet_cidr" {
  description = "The IPv4 CIDR block for the subnet."
  type        = string
}

variable "subnet_az" {
  description = "The Availability Zone in which your subnet will reside"
  type        = string
}

variable "subnet_tags" {
  description = "Tags for the Resource Group."
  type        = map(string)
}