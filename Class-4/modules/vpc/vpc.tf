resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  

  tags = var.vpc_tags 
}

resource "aws_route" "main_route" {
  route_table_id            = "aws_vpc.main.default_route_table.id"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my-internet-gw.id
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr_block
  availability_zone = var.subnet1_az
  tags = var.subnet1_tags
}


resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr_block
  availability_zone = var.subnet2_az
  tags = var.subnet2_tags
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet3_cidr_block
  availability_zone = var.subnet3_az
  tags = var.subnet3_tags
}

resource "aws_internet_gateway" "my-internet-gw" {
  vpc_id = aws_vpc.main.id

  tags = var.ig_tags

}