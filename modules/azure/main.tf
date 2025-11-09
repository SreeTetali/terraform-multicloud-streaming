provider "azurerm" {
  features {}
}

variable "stream_name" {
  type = string
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.stream_name}-rg"
  location = "eastus"
}

resource "azurerm_eventhub_namespace" "ns" {
  name                = "${var.stream_name}-ns"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard"
}

resource "azurerm_eventhub" "hub" {
  name                = var.stream_name
  namespace_name      = azurerm_eventhub_namespace.ns.name
  resource_group_name = azurerm_resource_group.rg.name
  partition_count     = 2
  message_retention   = 1
}

output "stream_id" {
  value = azurerm_eventhub.hub.id
}
