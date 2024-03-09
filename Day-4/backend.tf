terraform {
  backend "s3" {
    bucket = "shiv-rna-s3-demo-xyz"
    key = "shiv/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}

# In order for backend to work first -> run main.tf in the creating_backend