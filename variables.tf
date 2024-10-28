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
  description = "Create and attach Internet Gateway? (Public Subnet)"
  type        = bool
  default     = false
}

variable "igw_tags" {
  description = "Tags for the Internet Gateway."
  type        = map(string)
  default     = null
}