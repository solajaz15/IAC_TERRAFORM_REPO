
# Create a VPC
resource "aws_vpc" "dorex_oba" {
  cidr_block = var.cidr_block
}


# creating Public subnet

resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.pulic-subnet-cidr

  tags = {
    Name = "public_subnet"
  }
}

#creating private subnet

resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.private-subnet-cidr

  tags = {
    Name = "private_subnet"
  }
}

#Ec2
resource "aws_instance" "dorex_oba" {
  ami           = var.instance-ami
  instance_type = var.instance-type
 # subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "dorex_oba"
  }
}

# vcp id 
# resources name.logical name.id

#ec2 id 
# resources name.logical name.public_id

#Internet gateway

#resource "aws_internet_gateway" "my_internet_gateway" {
 # vpc_id = local.vpc_id

 # tags = {
   # Name = "dorex_oba"
 # }
#}