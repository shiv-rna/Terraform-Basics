variable "ami_value" {
    description = "This is the value of ami"
}

variable "tag_name_env" {
    description = "This is value of tag name for every env"
  
}

variable "instance_type_value" {
    description = "This is the value of the instance type"
    type = map(string)

    default = {
      "dev" = "t2.micro"
      "stage" = "t2.micro"
      "prod"= "t2.micro"
    }
}

variable "env_name" {
    description = "This is the value name of env"
        type = map(string)

    default = {
      "dev" = "Developer_env"
      "stage" = "Staging_env"
      "prod"= "Production_env"
    }
}
  