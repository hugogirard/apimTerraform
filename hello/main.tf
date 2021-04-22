resource "azurerm_api_management_api" "hello" {
  name                = "hello-api"
  resource_group_name = var.resourceGroupName  
  api_management_name = var.apimName
  revision            = "1"
  display_name        = "Hello API"
  path                = "hello"
  protocols           = ["https"]

  import {
    content_format = "swagger-json"
    content_value  = file("${path.module}/hello-api.json")
  }
}