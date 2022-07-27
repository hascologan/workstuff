resource "aws_dynamodb_table_item" "item2" {

    depends_on = [
        aws_dynamodb_table.connect-ccp
    ]
    table_name = aws_dynamodb_table.connect-ccp.name
    hash_key   = aws_dynamodb_table.connect-ccp.hash_key

    for_each = {
        "connect-ccp-1" = {
            id = "2"
            message = "Thank you for contacting Best Western, Goodbye!"
        }
        "connect-ccp-2" = {
            id = "1"
            message = "One moment while I transfer your call"
        }
        "connect-ccp-3" = {
            id = "0"
            message = "Hello! What can I help you with today?"
        }
        "connect-ccp-4" = {
            id = "3"
            message = "Another message is here"
        }
        
    }
    item = <<ITEM
    {
        "id": {"S": "${each.key}"},
        "message": {"S": "${each.value.message}"},
    }
    ITEM
}