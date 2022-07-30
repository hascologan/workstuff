resource "aws_lambda_function" "feedback" {
  s3_bucket     = ""
  s3_key        = "connect-saveFeedback.zip"
  function_name = "connect-saveFeedback"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connectcanada" {
  s3_bucket     = ""
  s3_key        = "prod-connect-canadaCheck.zip"
  function_name = "prod-connect-canadaCheck"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function used to check if caller has a Canada caller-ID"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connectmanagerservice" {
  s3_bucket     = ""
  s3_key        = "connect-manager-setServiceStatus.zip"
  function_name = "connect-manager-setServiceStatus"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connectprodadmilan" {
  s3_bucket     = ""
  s3_key        = "connect-prod-process-connect-ad-users-milan.zip"
  function_name = "connect-prod-process-connect-ad-users-milan"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "connect-provision-users-us.processDB_handler"
  runtime       = "${var.runtime}"
  description   = "Lambda-prod-120sec"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "calleridcheck" {
  s3_bucket     = ""
  s3_key        = "prod-connect-callerIdCheck.zip"
  function_name = "prod-connect-callerIdCheck"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function that compares calling party phone number to various DynamoDB tables and returns and returns the caller type."

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "updateoncalltable" {
  s3_bucket     = ""
  s3_key        = "Connect_updateOnCallTable.zip"
  function_name = "Connect_updateOnCallTable"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "cherwellgetvips" {
  s3_bucket     = ""
  s3_key        = "connect-prod-cherwell-getVips.zip"
  function_name = "connect-prod-cherwell-getVips"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "isvip-ddb-prod2.processDB_handler"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "renewcherwelltoken" {
  s3_bucket     = ""
  s3_key        = "connect-prod-renew-cherwell-token.zip"
  function_name = "connect-prod-renew-cherwell-token"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "renew-cherwell-token-prod.processToken_handler"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connectprodadusers" {
  s3_bucket     = ""
  s3_key        = "connect-prod-process-connect-ad-users.zip"
  function_name = "connect-prod-process-connect-ad-users"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "lambda_function.processDB_handler"
  runtime       = "${var.runtime}"
  description   = "Lambda-prod-120sec"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "prodconngetpropinfo" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getPropertyInfo.zip"
  function_name = "prod-connect-getPropertyInfo"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function that searches propertyNumberTable for a match and returns the property Info"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "prodconngetprompts" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getPrompts.zip"
  function_name = "prod-connect-getPrompts"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function that returns text for dynamic prompts used by Connect"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connectgetoncall" {
  s3_bucket     = ""
  s3_key        = "Connect_getOnCallInfo.zip"
  function_name = "Connect_getOnCallInfo"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connectmanagersetprompt" {
  s3_bucket     = ""
  s3_key        = "connect-manager-setPrompt.zip"
  function_name = "connect-manager-setPrompt"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "getservicestatus" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getServiceStatus.zip"
  function_name = "prod-connect-getServiceStatus"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Simple function that returns service status for a queue."

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "crouseraccptesting" {
  s3_bucket     = ""
  s3_key        = "prod-connect-croUserAcceptanceTesting.zip"
  function_name = "prod-connect-croUserAcceptanceTesting"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function used for Express user acceptance testing."

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connmanagergetprompts" {
  s3_bucket     = ""
  s3_key        = "connect-manager-getPrompts.zip"
  function_name = "connect-manager-getPrompts"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connmanagerdefaultservice" {
  s3_bucket     = ""
  s3_key        = "connect-manager-setDefaultServiceStatus.zip"
  function_name = "connect-manager-setDefaultServiceStatus"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "callbackpendingemail" {
  s3_bucket     = ""
  s3_key        = "connect-sendCallbackPendingEmail.zip"
  function_name = "connect-sendCallbackPendingEmail"
  role          = "${data.aws_iam_role.lambdapinpoint.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "agentsecurityprofile" {
  s3_bucket     = ""
  s3_key        = "connect-ccp-getAgencySecurityProfile.zip"
  function_name = "connect-ccp-getAgencySecurityProfile"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "quickchats" {
  s3_bucket     = ""
  s3_key        = "connect-getQuickChats.zip"
  function_name = "connect-getQuickChats"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "languageprompts" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getLanguagePrompts.zip"
  function_name = "prod-connect-getLanguagePrompts"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function used to get non-english language prompts for the CRO"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "dynamicattributes" {
  s3_bucket     = ""
  s3_key        = "prod-connect-dynamicAttributes.zip"
  function_name = "prod-connect-dynamicAttributes"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function to get info from dynamoDB for setting dynamic attributes"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "connectservicestatus" {
  s3_bucket     = ""
  s3_key        = "connect-getServiceStatus.zip"
  function_name = "connect-getServiceStatus"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "queuearn" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getQueueArn.zip"
  function_name = "prod-connect-getQueueArn"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Simple function that returns queue ARN from dynamoDB table."

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "vipcheck" {
  s3_bucket     = ""
  s3_key        = "prod-connect-vipCheck.zip"
  function_name = "prod-connect-vipCheck"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function that checks if caller is a Support Desk VIP, used by Connect."

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "expressattributes" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getExpressAttributes.zip"
  function_name = "prod-connect-getExpressAttributes"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function that searches expressDialedNumbers table for a match and returns contact attributes."

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "holidaycheck" {
  s3_bucket     = ""
  s3_key        = "prod-connect-holidayCheck.zip"
  function_name = "prod-connect-holidayCheck"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Simple function that returns if today is a holiday, from DynamoDB items."

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "pinpointoncall" {
  s3_bucket     = ""
  s3_key        = "Connect-pinpoint-oncall-prod.zip"
  function_name = "Connect-pinpoint-oncall-prod"
  role          = "${data.aws_iam_role.lambdapinpoint.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "getsspropertyinfo" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getSSPropertyInfo.zip"
  function_name = "prod-connect-getSSPropertyInfo"
  role          = "${data.aws_iam_role.ssproperyinfo.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  ephemeral_storage {
    size = 512
  }
}
resource "aws_lambda_function" "getlambdas" {
  s3_bucket     = ""
  s3_key        = "prod-connect-getLambdas.zip"
  function_name = "prod-connect-getLambdas"
  role          = "${data.aws_iam_role.lambdaRole.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  description   = "Function that returns ARNS of default lambda functions for dynamic attribute settings."

  ephemeral_storage {
    size = 512
  }
}


