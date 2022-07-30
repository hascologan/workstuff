###############################################################################
# Variables Required
variable "project_name" {
  description = "Unique alias for project related resources."
  type        = string
}

variable "region" {
  description = "AWS region. Required: explicit or sourced here or from the AWS_DEFAULT_REGION environment variable."
  type        = string
}

variable "profile" {
  description = "This is the AWS profile name as set in the shared credentials file."
  type        = string
}

variable "runtime" {
  description = "Default runtime for Lambda Functions"
  type        = string
}

variable "handler" {
  description = "Lambda Functions Handler Settings"
  type        = string
}

variable "billing_mode" {
  description = "Billing Mode for DynamoDB tables"
  type        = string
}



