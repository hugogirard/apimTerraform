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

resource "azurerm_api_management_api_operation_policy" "mockPolicy" {
  api_name              = azurerm_api_management_api.hello.name
  api_management_name   = var.apimName
  resource_group_name   = var.resourceGroupName
  operation_id          = "hello"

  xml_content = <<XML
<policies>
  <inbound>
    <mock-response status-code="200" content-type="application/json" />
  </inbound>
</policies>
XML

}