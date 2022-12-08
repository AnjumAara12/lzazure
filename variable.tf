variable "location" {
  type = string
}

variable "vnets" {
  type = list(object({
    vnet_name          = string
    vnet_address_space = list(string)
    subnets = list(object({
      name           = string
      address_prefix = string
    }))
  }))
}
variable "bast_vnet_name" {
  type = string
}
variable "bast_vnet_id" {
  type = string
}