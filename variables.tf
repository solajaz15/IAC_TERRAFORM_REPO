
variable "cidr_block" {
  type        = string
  description = "vpc cidr block"
  default     = "10.0.0.0/16"
}


#For easy understand of the cidr, 
#public subnet will be even numbers 10.0.0.0/24, 10.0.2.0/24....
#and 
#private will be odd numbers 10.0.1.0/24, 10.0.3.0/24....



variable "region" {
  type        = string
  description = "region_value"
  default     = "us-east-1"
}

variable "instance-ami" {
  type        = string
  description = "aws_instance_ami"
  default     = "ami-0022f774911c1d690"
}

variable "instance-type" {
  type        = string
  description = "aws_instance_type"
  default     = "t2.micro"
}


variable "pulic-subnet-cidr" {
  type        = string
  description = "pub-subnet-cidr"
  default     = "10.0.0.0/24"
}


variable "private-subnet-cidr" {
  type        = string
  description = "pri-subnet-cidr"
  default     = "10.0.1.0/24"
}