data "azurerm_resources" "apim" {
    name                    = var.apimName
    resource_group_name     = var.resourceGroupName    
}

# resource "azurerm_api_management_api" "example" {
#   name                = "example-api"
#   resource_group_name = var.resourceGroupName
#   api_management_name = azurerm_api_management.example.name
#   revision            = "1"
#   display_name        = "Example API"
#   path                = "example"
#   protocols           = ["https"]

#   import {
#     content_format = "swagger-json"
#     content_value  = file("${path.module}/conference-api.json")
#   }
# }