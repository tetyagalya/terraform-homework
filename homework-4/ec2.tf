resource "aws_instance" "example" {
  ami           = "ami-08a6efd148b1f7504"  
  instance_type = "t2.micro"
  tags          = local.common_tags
}
