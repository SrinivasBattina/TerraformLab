resource "aws_subnet" "subnet1-public" {
  cidr_block = var.subnet1_cidr_block
  vpc_id     = aws_vpc.awsvpc1.id
  tags = {
    Name = "${var.vpc_name}-subnet1"
  }
}

resource "aws_subnet" "subnet2-public" {
  cidr_block = var.subnet2_cidr_block
  vpc_id     = aws_vpc.awsvpc1.id
  tags = {
    Name = "${var.vpc_name}-subnet2"
  }
}