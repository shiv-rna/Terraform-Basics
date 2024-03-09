provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "shiv-instance" {
    ami = "ami-0f403e3180720dd7e"
    instance_type = "t2.micro"
}
