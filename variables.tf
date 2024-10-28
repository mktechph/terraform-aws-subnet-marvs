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

variable "subnet_public_bool" {
  description = "Set to true if you want to make a public subnet. This will create and attach an Internet Gateway."
  type        = bool
  default     = false
}

variable "igw_tags" {
  description = "Tags for the Internet Gateway."
  type        = map(string)
  default     = null
}

variable "subnet_nat_bool" {
  description = "Set to true if you want to create a NAT Gateway."
  type        = bool
  default     = false
}

variable "nat_tags" {
  description = "Tags for the NAT Gateway."
  type        = map(string)
  default     = null
}

variable "eip_tags" {
  description = "Tags for the EIP."
  type        = map(string)
  default     = null
}