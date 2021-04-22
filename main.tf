resource "azurerm_resource_group" "rg" {
  name     = var.resourceGroupName
  location = var.location
}

resource "azurerm_api_management" "apim" {
  name                  = var.apimName
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  publisher_name        = var.publisherName
  publisher_email       = var.publisherEmail

  sku_name              = "Developer_1"  
}

