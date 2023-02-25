resource "aws_internet_gateway" "newIGW" {
  vpc_id = aws_vpc.awsvpc1.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}