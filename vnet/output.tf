output "vnet_name_out" {
  value = azurerm_virtual_network.vnet.name
}
output "vnet_id_out" {
  value = azurerm_virtual_network.vnet.id
}
output "subnet_name_out" {
  value = [ for x in azurerm_virtual_network.vnet.subnet: x.name ]
}
output "subnet_id_out" {
  value = [ for x in azurerm_virtual_network.vnet.subnet: x.id ]
}