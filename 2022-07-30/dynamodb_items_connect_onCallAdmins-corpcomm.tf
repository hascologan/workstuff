resource "aws_dynamodb_table_item" "item4" {

    depends_on = [
        aws_dynamodb_table.calladmins
    ]
    table_name = aws_dynamodb_table.calladmins.name
    hash_key   = aws_dynamodb_table.calladmins.hash_key

    for_each = {
        "+19282329394" = {
            adminName = "Bethany Samaddar"
            phoneType = "Mobile"
        }
        "+19735706907" = {
            adminName= "Katie Ray"
            phoneType = "Mobile"
        }
        "+16025057893" = {
            adminName= "Kelly Dalton"
            phoneType = "Mobile"
        }
        "+17196417011" = {
            adminName= "Courtney McCurry"
            phoneType = "Mobile"
        }
        
    }
    item = <<ITEM
    {
        "custId": {"S": "${each.key}"},
        "adminName": {"S": "${each.value.adminName}"},
        "phoneType": {"S": "${each.value.phoneType}"}
    }
    ITEM
}