
# outputs ()

output "vpc_id" {
  description = "vcp id"
  value       = aws_vpc.dorex_oba.id
}

output "public_ip" {
  description = "public_ip"
  value       = aws_instance.dorex_oba.public_ip
}


output "instance_type" {
  description = "instance_id"
  value       = aws_instance.dorex_oba.instance_type
}

output "instance_ami" {
  description = "instance_ami_id"
  value       = aws_instance.dorex_oba.ami
}

#outputs (is used to retrieve various resources attribute)
# Output--is used to call out various resources