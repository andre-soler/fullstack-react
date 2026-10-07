output "url" {
  value = "http://${azurerm_container_group.api.fqdn}:9090"
}
