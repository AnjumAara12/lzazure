# output "local_vnets_out" {
#   value = local.local_vnets
# }
output "resource_group_out" {
  value = module.Create_RG.resourcegroup_out
}

# output "vnet_name_out" {
#   value = [for x in var.vnets :
#     module.Create_vnet[x.vnet_name].vnet_name_out
#   ]
# }

# output "vnet_id_out" {
#   value = [for x in var.vnets :
#     module.Create_vnet[x.vnet_name].vnet_id_out
#   ]
#}

# output "peer_bast_to_prod_out" {
#   value = module.create-bast-to-prod-vnetpeering.peer_out
# }

# output "peer_prod_to_dev_out" {
#   value = module.create-bast-to-dev-vnetpeering.peer_out
# }