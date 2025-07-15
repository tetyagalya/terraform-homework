resource "aws_instance" "web" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
subnet_id = "subnet-05da6abbba51e44a8"
key_name = aws_key_pair.deployer.key_name
vpc_security_group_ids = [aws_security_group.allow_tls.id]
user_data = file("apache.sh")

  tags = {
    Name = "Web-1"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
subnet_id = "subnet-0658e7ea5631ebb51"
key_name = aws_key_pair.deployer.key_name
vpc_security_group_ids = [aws_security_group.allow_tls.id]
user_data = file("apache.sh")

  tags = {
    Name = "Web-2"
  }
}

resource "aws_instance" "web3" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
subnet_id = "subnet-022883c9b675b62fc"
key_name = aws_key_pair.deployer.key_name
vpc_security_group_ids = [aws_security_group.allow_tls.id]
user_data = file("apache.sh")

  tags = {
    Name = "Web-3"
  }
}
