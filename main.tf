resource "aws_vpc" "vpc" {
  cidr_bock = "10.0.1.0/24"
}
resource "aws_route_table" "test" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = aws_vpc.vpc.cidr_block
  }
}

resource "aws_subnet" "test" {
  cidr_block = "10.0.1.0/24"
  vpc_id = "aws_vpc.vpc.id"
}
