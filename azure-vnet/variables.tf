variable "resource_group_name" {
  description = "The name of the resource group in which to create the VNET."
  type        = string
}

variable "location" {
  description = "The Azure location where resources will be created."
  type        = string
  default     = "West US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
}

variable "address_space" {
  description = "The address space for the VNET."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "A list of subnet objects to create. Each object should have a name and address_prefix."
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = [
    {
      name           = "default"
      address_prefix = "10.0.1.0/24"
    }
  ]
}
