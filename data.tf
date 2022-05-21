
# Declare the data source 
/*
datasource is use to pull down availabilty zones in the providers 
block*/
data "aws_availability_zones" "azs" {
  state = "available"
}

# data.aws_availability_zones.azs.names