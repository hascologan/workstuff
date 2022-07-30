resource "aws_dynamodb_table" "prod-blockingtable" {
    name                            = "prod-connect-callBlockingTable"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "custId"

    attribute {
      name                          = "custId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-dynamicattributes" {
    name                            = "prod-connect-dynamicAttributes"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "dialedNumber"

    attribute {
      name                          = "dialedNumber"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-dialednumbers" {
    name                            = "prod-connect-expressDialedNumbers"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "dialedNumber"

    attribute {
      name                          = "dialedNumber"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-holidaytable" {
    name                            = "prod-connect-holidayTable"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "date"

    attribute {
      name                          = "date"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-prompts" {
    name                            = "prod-connect-prompts"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "department"

    attribute {
      name                          = "department"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-propertyinfo" {
    name                            = "prod-connect-propertyInfo"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "propertyId"

    attribute {
      name                          = "propertyId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-propertynumbers" {
    name                            = "prod-connect-propertyNumbers"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "propPhoneNumber"

    attribute {
      name                          = "propPhoneNumber"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-queuetable" {
    name                            = "prod-connect-queueTable"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "queueId"

    attribute {
      name                          = "queueId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-vm-phx-vmtable" {
    name                            = "prod-voicemail-phoenix-Voicemail-Stack-10Z76NYYPFQYG-ContactVoicemailTable-M8QZ9SXTNSUT"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "contactId"
    range_key                       = "readerId"   
    

    attribute {
      name                          = "contactId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-vm-phx-globaltable" {
    name                            = "prod-voicemail-phoenix-Voicemail-Stack-10Z76NYYPFQYG-GlobalTable-1M9DYCYENR54M"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "instanceArn"   
    

    attribute {
      name                          = "instanceArn"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "prod-vm-phx-userstable" {
    name                            = "prod-voicemail-phoenix-Voicemail-Stack-10Z76NYYPFQYG-UsersTable-1IC0QIWOWRE74"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "agentId"   
    

    attribute {
      name                          = "agentId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "ccp-feedback" {
    name                            = "ccp-feedback"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "datetime"
    read_capacity                   = 5
    write_capacity                  = 5  
    

    attribute {
      name                          = "datetime"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "connect-ccp" {
    name                            = "connect-ccp-quickChat"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "id"
    read_capacity                   = 5
    write_capacity                  = 5 
    

    attribute {
      name                          = "id"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "connect-default" {
    name                            = "connect-default-LambdasTable"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "environment"   
    

    attribute {
      name                          = "environment"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "calladmins" {
    name                            = "Connect_onCallAdmins-corpcomm"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "custId"
    read_capacity                   = 5
    write_capacity                  = 5


    

    attribute {
      name                          = "custId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "calladmins-hmss" {
    name                            = "Connect_onCallAdmins-hmss"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "custId"
    read_capacity                   = 5
    write_capacity                  = 5
    

    attribute {
      name                          = "custId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "calladmins-phd" {
    name                            = "Connect_onCallAdmins-phd"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "custId"
    read_capacity                   = 5
    write_capacity                  = 5
    

    attribute {
      name                          = "custId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "oncalltable" {
    name                            = "Connect_onCallTable"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "ContactCenter"
    read_capacity                   = 5
    write_capacity                  = 5
    

    attribute {
      name                          = "ContactCenter"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "callusers" {
    name                            = "Connect_onCallUsers-corpcomm"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "userId" 
    read_capacity                   = 5
    write_capacity                  = 5

    

    attribute {
      name                          = "userId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "callusers-hmss" {
    name                            = "Connect_onCallUsers-hmss"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "userId"
    read_capacity                   = 5 
    write_capacity                  = 5
    

    attribute {
      name                          = "userId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "callusers-phd" {
    name                            = "Connect_onCallUsers-phd"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "userId"
    read_capacity                   = 5
    write_capacity                  = 5

    

    attribute {
      name                          = "userId"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "supportdesk" {
    name                            = "Connect_SupportDeskVIPs"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "Cust_ID"
    read_capacity                   = 5
    write_capacity                  = 5

    

    attribute {
      name                          = "Cust_ID"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "connectusers" {
    name                            = "Connect_users"
    billing_mode                    = "${var.billing_mode}"
    hash_key                        = "email"   
    

    attribute {
      name                          = "email"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "verintadapter" {
    name                            = "VerintAdapter"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "leaseKey"
    read_capacity                   = 10
    write_capacity                  = 10

    

    attribute {
      name                          = "leaseKey"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "verintctr" {
    name                            = "verintCTREvents"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "leaseKey"
    read_capacity                   = 5
    write_capacity                  = 5
    

    attribute {
      name                          = "leaseKey"
      type                          = "S"
    }
}

resource "aws_dynamodb_table" "verintrec11" {
    name                            = "verintris_rec11-mt6-usw1.2"
    billing_mode                    = "PROVISIONED"
    hash_key                        = "leaseKey"
    read_capacity                   = 5
    write_capacity                  = 5
    

    attribute {
      name                          = "leaseKey"
      type                          = "S"
    }
}



