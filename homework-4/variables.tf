variable region {
  type = string
  description = "Provide region"
}

variable key_name {
  type = string
  description = "Provide key name"
}

variable "vpc_config" {
  description = "VPC Configuration"
  type = list(object({
    cidr_block       = string
    enable_dns_support = bool
    enable_dns_hostnames = bool
  }))
}

variable "subnet_config" {
  description = "Subnet Configuration"
  type = list(object({
    cidr_block            = string
    availability_zone      = string
    auto_assign_public_ip = bool
    name                  = string
  }))
}

variable "internet_gateway" {
  description = "Internet Gateway ID"
  type        = string
}

variable "route_table_names" {
  description = "Route Table Names"
  type        = list(string)
}

variable "allowed_ports" {
  description = "Allow Ports"
  type        = list(number)
}

variable "ec2_config" {
  description = "EC2 Configuration"
  type = map(string)
}
