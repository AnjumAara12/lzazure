module "Create_RG" {
  source   = "./resourcegroup"
  location = var.location
}
locals {
  local_vnets = { for x in var.vnets :
    x.vnet_name => {
      vnet_address_space = x.vnet_address_space
      subnets            = x.subnets
    }
  }
}
module "Create_vnet" {
  source              = "./vnet"
  for_each            = local.local_vnets
  location            = var.location
  vnet_address_space  = each.value.vnet_address_space
  vnet_name           = each.key
  subnets             = each.value.subnets
  resource_group_name = module.Create_RG.resourcegroup_out
}
# After creating vnets create bastion in another window by passing the desired resource group name
# once bastion is created run the below peering script
module "create-bast-to-dev-vnetpeering" {
  source              = "./vnets-peering"
  peeringname         = "bast-to-dev"
  resource_group_name = module.Create_RG.resourcegroup_out
  vnet_name           = var.bast_vnet_name
  remote_vnet_id      = module.Create_vnet[var.vnets[0].vnet_name].vnet_id_out
}

module "create-dev-to-bast-vnetpeering" {
  source              = "./vnets-peering"
  peeringname         = "dev-to-bast"
  resource_group_name = module.Create_RG.resourcegroup_out
  vnet_name           = module.Create_vnet[var.vnets[0].vnet_name].vnet_name_out
  remote_vnet_id      = var.bast_vnet_id
}

module "create-bast-to-prod-vnetpeering" {
  source              = "./vnets-peering"
  peeringname         = "bast-to-prod"
  resource_group_name = module.Create_RG.resourcegroup_out
  vnet_name           = var.bast_vnet_name
  remote_vnet_id      = module.Create_vnet[var.vnets[1].vnet_name].vnet_id_out
}

module "create-prod-to-bast-vnetpeering" {
  source              = "./vnets-peering"
  peeringname         = "prod-to-bast"
  resource_group_name = module.Create_RG.resourcegroup_out
  vnet_name           = module.Create_vnet[var.vnets[1].vnet_name].vnet_name_out
  remote_vnet_id      = var.bast_vnet_id
 }





