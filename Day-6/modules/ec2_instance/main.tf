resource "aws_instance" "Shiv-EC2" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
      Name = var.tag_name
      Environment = var.env_type
    }
}