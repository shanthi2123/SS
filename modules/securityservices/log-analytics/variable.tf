variable "log_name" {
    description = "name for the log"
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
variable "log_sku" {
    description = "sku for the log"
    type = string
}
variable "solution_name" {
    description = "name for the solution"
    type = string
}
variable "log_publisher_plan" {
    description = "publisher plan for the log"
    type = string
}
variable "log_publisher_product" {
    type = string
    description = "publisher product for the log"
}
variable "fusion_name" {
    description = "name for the fusion"
    type = string
}
variable "alert_rule_template_guid" {
    description = "alert rule temple guid"
    type = string
}