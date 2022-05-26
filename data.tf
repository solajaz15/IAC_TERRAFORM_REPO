
# Declare the data source 
/*
datasource is use to pull down availabilty zones in the providers 
block
working with public modules*/ 

data "aws_availability_zones" "azs" {
  state = "available"
}
# data.aws_availability_zones.azs

#creating data-source ami

data "aws_ami" "my_data_ami" {
  most_recent = true
  owners       = ["amazon"]
}


#AMI

/*data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}*/

