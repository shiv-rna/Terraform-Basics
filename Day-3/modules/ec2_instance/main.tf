resource "aws_instance" "ex_instance" {
    ami = var.ami_value
    instance_type = var.instance_type_value
}