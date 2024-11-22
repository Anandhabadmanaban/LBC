data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = "myfirstbucket30031990"
    key = "Terraform.tfstate"
    region = var.region
  }

}

