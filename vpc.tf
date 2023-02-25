resource "aws_vpc" "awsvpc1" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}