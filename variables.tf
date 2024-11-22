variable "region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"  
}


locals {
  
  eks_cluster_name = "${data.terraform_remote_state.eks.outputs.cluster_id}"  
} 


locals {
  
  name = "LBC"  
} 


locals {

  policy = ""

}