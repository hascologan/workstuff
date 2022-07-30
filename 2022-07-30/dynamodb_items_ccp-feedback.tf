resource "aws_dynamodb_table_item" "item1" {

    depends_on = [
        aws_dynamodb_table.ccp-feedback
    ]
    table_name = aws_dynamodb_table.ccp-feedback.name
    hash_key   = aws_dynamodb_table.ccp-feedback.hash_key

    for_each = {
        "2022/02/23 11:09:07" = {
            contactId = "unknown"
            description = "This popped up & I can't log in. Access denied. Your account has been authenticated, but has not been onboarded to this application."
            email = "holly.fishergraham@bestwestern.com"
            feedbackType = "issue"
            username = "unknown"
        }
        "2021/04/22 11:55:21" = {
            contactId = "3d6ed1d3-a2d8-4089-aa92-ff3544926115"
            description = "cant receive calls on my amazon connect, its saying softphonecall failed. It has been going on like 30 min ago."
            email = "lorraine.dikumbi@bestwestern.com"
            feedbackType = "issue"
            username = "lorraine.dikumbi@bestwestern.com"
        }
        "2022/02/23 11:09:09" = {
            contactId = "unknown"
            description = "This popped up & I can't log in. Access denied"
            email = "holly.fishergraham@bestwestern.com"
            feedbackType = "issue"
            username = "unknown"
        }
        "2021/07/02 13:49:20" = {
            contactId = "unknown"
            description = "When speaking to customers on the phone, it sounds like they are speaking through a tube or perhaps a long echo. I have tested calls on Microsoft Teams and with multiple headsets, and the issue does not occur anywhere else."
            email = "unknown"
            feedbackType = "issue"
            username = "Brittany.Crain@bestwestern.com"
        }
        "2020/10/20 00:30:46" = {
            description = "A dark mode if possible"
            email = "unknown"
            feedbackType = "feature-request"
            username = "Justin.Hall@bestwestern.com"
        }
        "2019/12/18 12:59:13" = {
            description = "Great work! This is the best tool ever!"
            email = "blah@blah.com"
        }
        "2020/11/04 09:49:06" = {
            description = "Dark Mode"
            email = "unknown"
            feedbackType = "feature-request"
            username = "Justin.Hall@bestwestern.com"
        }
        "2020/06/17 02:46:59" = {
            description = "A way to directly transfer the call to a single colleague, not a group."
            email = "unknown"
            feedbackType = "feature-request"
            username = "Paola.Fragala@bestwestern.com"
        }
         "2020/10/05 13:01:57" = {
            description = "If you're auxed into File Follow Up and you make a call out, the phone shouldnt put you into aftercall on top of th file follow up, otherwise team members might think they are in file follow up still but their acw is being counted instead."
            email = "unknown"
            feedbackType = "feature-request"
            username = "Darius.Haddock@bestwestern.com"
        }
        
    }
    item = <<ITEM
    {
        "datetime": {"S": "${each.key}"},
        "contactId": {"S": "${each.value.contactId}"},
        "description": {"S": "${each.value.description}"},
        "email": {"S": "${each.value.email}"},
        "feedbackType": {"S": "${each.value.feedbackType}"},
        "username": {"S": "${each.value.username}"}
    }
    ITEM
}