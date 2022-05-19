
locals {
  vpc_id = aws_vpc.dorex_oba.id
}

#to call this local : local.vpc_id