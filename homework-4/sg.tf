resource "aws_security_group" "default" {
  name        = "default"
  description = "Default security group"
  tags        = local.common_tags
}
