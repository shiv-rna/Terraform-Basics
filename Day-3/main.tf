module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_value = "ami-0f403e3180720dd7e"
    instance_type_value = "t2.micro"
}

output "module_output" {
    value = module.ec2_instance.public_ip
}