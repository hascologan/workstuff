####################################################################################################################
# Configure Terraform
terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
       }
    }
}

#####################################################################################################################
# Configure the AWS Provider
provider "aws" {
  region = var.region
  profile = var.profile

  default_tags {
    tags = {
        resource-created-by = "terraform"
    }
  }
}

#######################################################################################################################

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_region" "current" {}