variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    description = "EC2 ami ID"
    type = string  
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "yellow_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
}

output "public_ip" {
    description = "Public IP address of the EC2 instance"
    value = aws_instance.yellow_instance.public_ip
}