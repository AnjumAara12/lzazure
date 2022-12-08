location = "East US"
vnets = [
  {
    vnet_name          = "Cyient_Azure_LandingZone_Automation_workload_vnet"
    vnet_address_space = ["10.0.0.0/16"]
    subnets = [
      {
        address_prefix = "10.0.1.0/24"
        name           = "Cyient_Azure_LandingZone_publicsubnet1"
      },
      {
        address_prefix = "10.0.2.0/24"
        name           = "Cyient_Azure_LandingZone_publicsubnet2"
      },
      {
        address_prefix = "10.0.3.0/24"
        name           = "Cyient_Azure_LandingZone_privatesubnet1"
      },
      {
        address_prefix = "10.0.4.0/24"
        name           = "Cyient_Azure_LandingZone_privatesubnet2"
      },
      {
        address_prefix = "10.0.5.0/24"
        name           = "Cyient_Azure_LandingZone_privatesubnet3"
      },
      {
        address_prefix = "10.0.6.0/24"
        name           = "Cyient_Azure_LandingZone_privatesubnet4"
      },
    ]
  },

  {
    vnet_name          = "Cyient_Azure_LandingZone_test-vnet"
    vnet_address_space = ["10.80.0.0/16"]
    subnets = [
      {
        name           = "Cyient_Azure_LandingZone_subnet1"
        address_prefix = "10.80.2.0/24"

      },
      {
        name           = "Cyient_Azure_LandingZone_subnet2"
        address_prefix = "10.80.1.0/24"

      },
    ]
  },
]
bast_vnet_name = "Cyient_Azure_LandingZone_bastion_vnet"
bast_vnet_id = "/subscriptions/6d102e60-b298-4713-a692-34b2f90e0ff7/resourceGroups/Cyient_Azure_LandingZone_resource_group_2/providers/Microsoft.Network/virtualNetworks/Cyient_Azure_LandingZone_bastion_vnet"