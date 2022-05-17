
# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
}

resource "aws_instance" "dorex_oba" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
}

# vcp id 
# resources name.logical name.id

#ec2 id 
# resources name.logical name.public_id