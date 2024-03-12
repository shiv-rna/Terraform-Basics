data "vault_kv_secret_v2" "secret_of_vault" {
  mount = "kv"
  name  = "test-secret"
}

resource "aws_instance" "shiv-ec2" {
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = "t2.micro"
    tags = {
      Name = "Shiv-EC2"
      secret = data.vault_kv_secret_v2.secret_of_vault.data["username"] 
    }
  
}