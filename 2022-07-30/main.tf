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
backend "s3" {
    region         = "us-west-2"
    profile        = "Your Profile"
    dynamodb_table = "<DynamoDB Table Name>"
    bucket         = "<S3 Bucket Name>"

    # Do not change the name below
    key = "tf-aws-resource.tfstate"
  }

###############################################################################
# Configure the AWS Provider(s)
provider "aws" {
  region  = var.region
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