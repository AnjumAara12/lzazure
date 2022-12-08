variable "vnet_name" {
  type = string
  default = "workload-vnet"
  
}
variable "location" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "resource_group_name" {
  type = string
  }

variable "subnets" {
  type = list(object({
    name = string
    address_prefix = string
  })) 
}
