variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "Project Name for tagging"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public Subnet CIDR block"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default     = "t3.small"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "ami_id" {
  description = "Ubuntu AMI ID for the selected region"
  type        = string
}

variable "az1" {
  description = "Availability Zone for public subnet"
  type        = string
}

variable "igw_name" {
  description = "Name tag of existing Internet Gateway"
  type        = string
}
