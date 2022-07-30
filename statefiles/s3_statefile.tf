###############################################################################
# S3 Bucket For Holding Terraform Statefile
resource "aws_s3_bucket" "tf_statefile_s3" {
  bucket = lower(replace("${var.project_name}-terraform-statefile-${data.aws_caller_identity.current.account_id}-S3B", " ", ""))

  tags = {
    Name = replace("${var.project_name}-terraform-statefile-${data.aws_caller_identity.current.account_id}-S3B", " ", "")
  }

  ###############################################################################
# S3 Bucket for S3 Holding Terraform Statefile Versioning Enabled
resource "aws_s3_bucket_versioning" "tf_statefile_s3_versioning" {
  bucket = aws_s3_bucket.tf_statefile_s3.id
  versioning_configuration {
    status = "Enabled"
  }
 }
}