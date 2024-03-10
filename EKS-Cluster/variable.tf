variable "awsRegion" {
  type    = string
  default = "ap-south-1"
}
variable "key_name" {
  type    = string
  default = "my-eky"
}
variable "prefix" {
  default = "CompanyName"
}
variable "project" {
  default = "mediawiki"
}

locals {
  prefix           = "${var.prefix} - ${terraform.workspace}"
  environment      = terraform.workspace
  eks_cluster_name = terraform.workspace
  project          = var.project
  common_tags = {
    environment   = terraform.workspace
    role          = terraform.workspace
    project       = var.project
    appname       = var.project
    bussinessunit = var.project
    managedby     = "Terraform"

  }
}