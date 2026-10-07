resource "azurerm_resource_group" "rg" {
  name     = "rg-fullstack-react"
  location = "northcentralus"
}

resource "azurerm_container_group" "api" {
  name                = "aci-fullstack-react"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  ip_address_type     = "Public"
  dns_name_label      = "fullstack-react-andre2510"

  container {
    name   = "api"
    image  = "andre2510/api-projeto-teste:1.3"
    cpu    = 0.5
    memory = 1

    ports {
      port     = 9090
      protocol = "TCP"
    }
  }
}
