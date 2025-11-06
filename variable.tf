variable "aws_region" {
  default = "ap-south-1"
}

variable "project_name" {
  default = "jenkins-aws-demo"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name"
}

variable "ami_id" {
  description = "Ubuntu AMI for ap-south-1"
  default     = "ami-04568bde0d686e039"
}

variable "az1" {
  default = "ap-south-1a"
}
