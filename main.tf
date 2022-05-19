
# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
}


# creating Public subnet

resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "public_subnet"
  }
}

#creating private subnet

resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_subnet"
  }
}


resource "aws_instance" "dorex_oba" {
  ami           = var.instance-ami
  instance_type = var.instance-type
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "dorex_oba"
  }
}

# vcp id 
# resources name.logical name.id

#ec2 id 
# resources name.logical name.public_id

