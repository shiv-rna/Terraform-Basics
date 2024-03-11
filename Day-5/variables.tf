variable "cidr" {
    default = "10.0.0.0/16"  
}

variable "cidr_subnet" {
    default = "10.0.0.0/24"
}

variable "ami_value" {
    description = "Value of ami for aws instance"
    type = string
    default = "ami-07d9b9ddc6cd8dd30"
}

variable "instance_type_value" {
    description = "Value of instance type for aws instance"
    type = string
    default = "t2.micro"
}