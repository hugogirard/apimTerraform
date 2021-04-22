resource "azurerm_api_management_api" "example" {
  name                = "echo-api"
  resource_group_name = var.resourceGroupName  
  api_management_name = var.apimName
  revision            = "1"
  display_name        = "Echo API"
  path                = "echo"
  protocols           = ["https"]

  import {
    content_format = "swagger-json"
    content_value  = file("${path.module}/echo-api.json")
  }
}