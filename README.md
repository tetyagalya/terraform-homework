# terraform-homework
# terraform.tfvars example

```hcl

key_name = "my-laptop-key"
region = "us-east-1"

vpc_config = [
  {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
  }
]

subnet_config = [
  {
    cidr_block            = "10.0.1.0/24"
    availability_zone      = "us-east-1a"
    auto_assign_public_ip = true
    name                  = "public-subnet-1"
  },
  {
    cidr_block            = "10.0.2.0/24"
    availability_zone      = "us-east-1b"
    auto_assign_public_ip = true
    name                  = "public-subnet-2"
  },
    {
    cidr_block            = "10.0.3.0/24"
    availability_zone      = "us-east-1a"
    auto_assign_public_ip = false
    name                  = "private-subnet-1"
  },
  {
    cidr_block            = "10.0.4.0/24"
    availability_zone      = "us-east-1b"
    auto_assign_public_ip = false
    name                  = "private-subnet-2"
  }
]


internet_gateway = "igw-0887b0164cffb57c7"

route_table_names = ["public-rt", "private-rt"]

allowed_ports = [22, 80, 443, 3306]

ec2_config = {
  ami_id        = "ami-08a6efd148b1f7504"
  instance_type = "t2.micro"
}

