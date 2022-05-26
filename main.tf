
# Create a VPC
resource "aws_vpc" "dorex_oba" {
  cidr_block = var.cidr_block
}


# creating Public subnet

resource "aws_subnet" "public_subnet" {
  vpc_id                  = local.vpc_id
  cidr_block              = var.pulic-subnet-cidr
  availability_zone       = data.aws_availability_zones.azs.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

#creating private subnet

resource "aws_subnet" "private_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.private-subnet-cidr
  availability_zone = data.aws_availability_zones.azs.names[1]

  tags = {
    Name = "private_subnet"
  }
}

#Ec2
/*resource "aws_instance" "count" {
  #count = var.sample ? 1 : 0
  ami           = data.aws_ami.my_data_ami.id
  instance_type = var.instance-type
   subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "dorex_oba"
  }
}*/


resource "aws_instance" "for_each_with_list" {
  for_each = toset(var.sample-for_each)
  ami           = data.aws_ami.my_data_ami.id
  instance_type = each.value
   subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "dorex_oba"
  }
}

#for_each with map

resource "aws_instance" "for_each_with_map" {
  for_each = toset(var.sample-for_each)
  ami           = data.aws_ami.my_data_ami.id
  instance_type = each.value
   subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "dorex_oba"
  }
}

/*# vcp id 
# resources name.logical name.id

#ec2 id 
# resources name.logical name.public_id

#Internet gateway

#resource "aws_internet_gateway" "my_internet_gateway" {
# vpc_id = local.vpc_id

# tags = {
# Name = "dorex_oba"
# }*/