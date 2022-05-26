
data "aws_availability_zones" "azs" {
  state = "available"
  }

  
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-dorex-vpc"
  cidr = "100.0.0.0/16"

  azs             = slice(data.aws_availability_zones.azs.names, 0, 3)
  private_subnets = ["100.0.1.0/24", "100.0.3.0/24", "100.0.5.0/24"]
  public_subnets  = ["100.0.0.0/24", "100.0.2.0/24", "100.0.4.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
