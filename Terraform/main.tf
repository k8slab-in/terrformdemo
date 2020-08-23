provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=2.4.0"
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "East US"
}
output "id" {
  value = data.azurerm_resource_group.example.id
}
