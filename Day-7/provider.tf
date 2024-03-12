provider "aws" {
    region = "us-east-1"  
}

provider "vault" {
    address = "http://54.173.134.40:8200"
    skip_child_token = true

    auth_login {
        path = "auth/approle/login"

        parameters = {
        role_id = "77ff41c7-0e21-baf4-feeb-da3e77b68978"
        secret_id = "9c8d3709-4078-28d6-0d2a-20c1af32bb20"
        }
    }   
}
