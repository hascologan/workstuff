data "aws_iam_role" "lambdaRole" {
  name = "Connect-LambdaRole"
  arn  = "arn:aws:iam::383968211971:role/Connect-LambdaRole"
}

data "aws_iam_role" "lambdapinpoint" {
    name = "Connect-Lambda-Pinpoint_Role"
    arn = "arn:aws:iam::383968211971:role/Connect-Lambda-Pinpoint_Role"
}
data "aws_iam_role" "ssproperyinfo" {
    name = "prod-connect-get-SSPropertyInfo-role-rs55zt7n"
    arn = "arn:aws:iam::383968211971:role/service-role/prod-connect-get-SSPropertyInfo-role-rs55zt7n"
}