variable "eventhub_namespace_name" {
    description = "name for the eventhub newspace"
    type = string
}
variable "resource_group_name" {
    description = "name for the resource group"
    type = string
}
variable "resource_group_location" {
    description = "location for the resource group"
    type = string
}
variable "eventhub_sku" {
    description = "sku for the eventhub"
    type = string
}
variable "capacity" {
    description = "capacity"
    type = number
}
variable "eventhub_name" {
    description = "name for the eventhub"
    type = string
}
variable "partition_count" {
    description = "partition count"
    type = number
}
variable "message_retention" {
    description = "message retention"
    type = number
}
variable "eventhub_authorization_rule_name" {
    description = "name for the eventhub authorization rule"
    type = string
}
variable "listen" {
    description = "listen"
    type = string
}
variable "send" {
    description = "send"
    type = string
}
variable "manage" {
    description = "manage"
    type = string
}
variable "security_center_automation_name" {
    description = "name for the security center automation"
    type = string
}
variable "type" {
    description = "type"
    type = string
}
variable "event_source" {
    description = "event source"
    type = string
}
variable "property_path" {
    description = "property path"
    type = string
}
variable "rule_operator" {
    description = " rule operator"
    type = string
}
variable "expected_value" {
    description = "expected value"
    type = string
}
variable "property_type" {
    description = "property type"
    type = string
}
