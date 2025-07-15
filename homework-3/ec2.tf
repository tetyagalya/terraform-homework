data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"] 
}


resource "aws_instance" "web2" {
  ami           = data.aws_ami.amazon.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main.id 
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache-2.sh")

  tags = {
    Name = "Amazon"
  }
}

data "aws_ami" "ubuntu" {
 most_recent = true

 filter {
   name   = "name"
   values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20250627"] 

 }
 owners = ["099720109477"]  
}


resource "aws_instance" "web" {
 ami           = data.aws_ami.ubuntu.id
 instance_type = "t2.micro"
 subnet_id = aws_subnet.main2.id
 vpc_security_group_ids = [aws_security_group.allow_tls.id]
 user_data = file("apache.sh")


 tags = {
   Name = "Ubuntu"
 }
}
