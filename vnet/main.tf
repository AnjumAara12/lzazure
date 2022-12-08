resource "random_id" "suffix" {
    byte_length = 2
  
}
locals {
  vnet_name = "${var.vnet_name}-${random_id.suffix.hex}"
}
resource "azurerm_virtual_network" "vnet" {
    name = local.vnet_name
    location = var.location
    resource_group_name = var.resource_group_name
    address_space = var.vnet_address_space
  
dynamic "subnet"{
    for_each = var.subnets
    content {
        name = subnet.value.name
        address_prefix = subnet.value.address_prefix
    }

}
tags = {
    environment = "Test"
  }
}