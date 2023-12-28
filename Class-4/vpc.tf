resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "myVPC"
  }
}

resource "aws_route" "main_route" {
  route_table_id            = "aws_vpc.main.default_route_table.id"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my-internet-gw.id
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Subnet-1"
  }
}


resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Subnet-2"
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "Subnet-3"
  }
}

resource "aws_internet_gateway" "my-internet-gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}