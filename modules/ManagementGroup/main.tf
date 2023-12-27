data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "example_parent" {
 display_name = var.display_name

  subscription_ids = [
    data.azurerm_subscription.current.subscription_id,
  ]
}
