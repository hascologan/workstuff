data "aws_iam_policy" "dynamodb_lambda_policy" {
  arn = "arn:aws:iam::383968211971:policy/dynamodb_lambda_policy"
  description = "Lambda full access to dynamodb resources"
}

data "aws_iam_policy" "lambda_cloudwatch_policy" {
  arn = "arn:aws:iam::383968211971:policy/lambda_cloudwatch_policy"
  description = "Lambda full access to cloudwatch logs"
}

data "aws_iam_policy" "amazons3fullaccess" {
  arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  description = "Provides full access to all buckets via the AWS Management Console"
}

data "aws_iam_policy" "lambdavpc" {
  arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  description = "Provides minimum permissions for a Lambda Function"
}




