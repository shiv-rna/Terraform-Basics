module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami_value
    tag_name = var.tag_name_env
    instance_type = lookup(var.instance_type_value, terraform.workspace, "t2.micro")
    env_type = lookup(var.env_name, terraform.workspace)
}