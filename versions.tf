terraform {


  required_version = "1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      
      version = ">= 4.66"
    }

    helm = {
      source = "hashicorp/helm"
      #version = "2.5.1"
      #version = "~> 2.5"
      version = "~> 2.9"
    }

     http = {
      source = "hashicorp/http"
      #version = "2.1.0"
      #version = "~> 2.1"
      version = "~> 3.3"
    }

  }

  #refer https://developer.hashicorp.com/terraform/language/backend/s3
#terraform init -backend-config="access_key=AKIAYS2NQUAW6HKDLMMX" -backend-config="secret_key=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"
  backend "s3" {

  bucket = "myfirstbucket30031990"
  key = "lbc.tfstate" #this creates lbc.tfstate object which act as state file
  region = "us-east-1"

#for state locking
  dynamodb_table = "TerraformStateLock"
}


}


provider "aws" {
  region  = var.region
  access_key = "AKIAYS2NQUAW6HKDLMMX"
  secret_key = "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"

}