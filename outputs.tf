
# outputs ()

output "vpc_id" {
  description = "vcp id"
  value       = aws_vpc.example.id
}

output "public_ip" {
  description = "public_ip"
  value       = aws_instance.dorex_oba.public_ip
}