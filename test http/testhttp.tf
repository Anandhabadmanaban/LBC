# Datasource: AWS Load Balancer Controller IAM Policy get from aws-load-balancer-controller/ GIT Repo (latest)
data "http" "lbc_iam_policy" {
  #url = "https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/main/docs/install/iam_policy.json"
url = "https://raw.github.com/kubernetes-sigs/aws-load-balancer-controller/blob/main/docs/install/iam_policy.json"
  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}


  terraform {


  required_version = "1.7.5"
  required_providers {
    

   
     http = {
      source = "hashicorp/http"
      #version = "2.1.0"
      #version = "~> 2.1"
      version = "3.4.2"
    }
  }

  }