# Use your existing VPC by ID
data "aws_vpc" "selected" {
  id = "vpc-08730bb4148850adc"
}

# Get subnets in the VPC
data "aws_subnet_ids" "selected" {
  vpc_id = data.aws_vpc.selected.id
}

# Security Group
resource "aws_security_group" "ec2_sg" {
  name        = "jenkins-ec2-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = data.aws_vpc.selected.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "web" {
  ami                    = "ami‑04568bde0d686e039" Ubuntu for ap-south-1
  instance_type          = "t2.micro"
  key_name               = var.key_name
  subnet_id              = data.aws_subnet_ids.selected.ids[0]
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "jenkins-aws-demo-ec2"
  }
}
