
variable "cidr_block" {
  type        = string
  description = "vpc cidr block"
  default     = "10.0.0.0/16"
}


variable "region" {
  type        = string
  description = "region_value"
  default     = "us-east-1"
}