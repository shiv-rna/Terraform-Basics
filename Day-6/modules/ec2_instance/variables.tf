variable "ami" {
    description = "This is the AMI for the instance"  
}

variable "instance_type" {
    description = "This is the instance type value"
    default = "t2.micro"
}

variable "aws_region" {
    description = "This is the aws region value"
    default = "us-east-1"
}

variable "tag_name" {
    description = "This is the tag name value"
    type = string  
}

variable "env_type" {
    description = "This is the tag for environment"
    type = string  
}