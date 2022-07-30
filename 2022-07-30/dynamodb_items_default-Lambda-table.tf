resource "aws_dynamodb_table_item" "item3" {

    depends_on = [
        aws_dynamodb_table.connect-default
    ]
    table_name = aws_dynamodb_table.connect-default.name
    hash_key   = aws_dynamodb_table.connect-default.hash_key

    for_each = {
        "dev" = {
            callerIdCheck = "arn:aws:lambda:us-west-2:383968211971:function:dev-connect-callerIdCheck"
            dynamicAttributes = "arn:aws:lambda:us-west-2:383968211971:function:dev-connect-dynamicAttributes"
            getPrompts = "arn:aws:lambda:us-west-2:383968211971:function:getPrompts"
            getPropertyInfo = "arn:aws:lambda:us-west-2:383968211971:function:dev-connect-getPropertyInfo"
            holidayCheck = "arn:aws:lambda:us-west-2:383968211971:function:dev-connect-holidayCheck"
            vipCheck = "arn:aws:lambda:us-west-2:383968211971:function:dev-connect-vipCheck"
        }
        "prod" = {
            callerIdCheck = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-callerIdCheck"
            canadaCheck = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-canadaCheck"
            dynamicAttributes = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-dynamicAttributes"
            getLanguagePrompts = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-getLanguagePrompts"
            getPrompts = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-getPrompts"
            getPropertyInfo = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-getPropertyInfo"
            holidayCheck = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-holidayCheck"
            vipCheck = "arn:aws:lambda:us-west-2:383968211971:function:prod-connect-vipCheck"
        }
        
    }
    item = <<ITEM
    {
        "environment": {"S": "${each.key}"},
        "callerIdCheck": {"S": "${each.value.callerIdCheck}"},
        "canadaCheck": {"S": "${each.value.canadaCheck}"},
        "dynamicAttributes": {"S": "${each.value.dynamicAttributes}"},
        "getLanguagePrompts": {"S": "${each.value.getLanguagePrompts}"},
        "getPrompts": {"S": "${each.value.getPrompts}"},
        "getPropertyInfo": {"S": "${each.value.getPropertyInfo}"},
        "holidayCheck": {"S": "${each.value.holidayCheck}"},
        "vipCheck": {"S": "${each.value.vipCheck}"}
    }
    ITEM
}