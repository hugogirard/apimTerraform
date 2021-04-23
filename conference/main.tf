resource "azurerm_api_management_api" "example" {
  name                = "conference-api"
  resource_group_name = var.resourceGroupName  
  api_management_name = var.apimName
  revision            = "1"
  display_name        = "Conference API"
  path                = "example"
  protocols           = ["https"]
  service_url         = "https://conferenceapi.azurewebsites.net"

  import {
    content_format = "swagger-link-json"
    content_value  = "http://conferenceapi.azurewebsites.net/?format=json"
  }
}