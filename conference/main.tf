resource "azurerm_api_management_api" "example" {
  name                = "conference-api"
  resource_group_name = var.resourceGroupName  
  api_management_name = var.apimName
  revision            = "1"
  display_name        = "Conference API"
  path                = "example"
  protocols           = ["https"]

  import {
    content_format = "swagger-json"
    content_value  = file("${path.module}/conference-api.json")
  }
}