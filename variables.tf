variable "resource_group_name" {
  description = "The name of the resource group in which to create the VMware SDDC"
  type        = string
}

variable "location" {
  description = "The Azure location in which to create the VMware SDDC"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}

variable "vmware_sddc_name" {
  description = "The name of the VMware SDDC"
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the VMware SDDC"
  type        = string
}

variable "management_cluster_size" {
  description = "The size of the management cluster"
  type        = number
}

variable "network_subnet_cidr" {
  description = "The CIDR block for the management subnet"
  type        = string
}

variable "internet_connection_enabled" {
  description = "Should the SDDC have internet access"
  type        = bool
}


