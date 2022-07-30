resource "aws_dynamodb_table_item" "item2" {

    depends_on = [
        aws_dynamodb_table.connect-ccp
    ]
    table_name = aws_dynamodb_table.connect-ccp.name
    hash_key   = aws_dynamodb_table.connect-ccp.hash_key

    for_each = {
        "2" = {
            message = "Thank you for contacting Best Western, Goodbye!"
        }
        "1" = {
            message = "One moment while I transfer your call"
        }
        "0" = {
            message = "Hello! What can I help you with today?"
        }
        "3" = {
            message = "Another message is here"
        }
        
    }
    item = <<ITEM
    {
        "id": {"S": "${each.key}"},
        "message": {"S": "${each.value.message}"}
    }
    ITEM
}