resource "azurerm_resource_group" "vmware_sddc" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "random_password" "vmware_sddc_vcenter_password" {
  length           = 16
  special          = true
  min_numeric      = 1
  min_special      = 1
  override_special = "_%@"
}

resource "random_password" "vmware_sddc_nsxt_password" {
  length           = 16
  special          = true
  min_numeric      = 1
  min_special      = 1
  override_special = "_%@"
}

resource "azurerm_vmware_private_cloud" "vmware_sddc" {
  name                = var.vmware_sddc_name
  resource_group_name = azurerm_resource_group.vmware_sddc.name
  location            = azurerm_resource_group.vmware_sddc.location
  sku_name            = var.sku_name

  management_cluster {
    size = var.management_cluster_size
  }

  network_subnet_cidr         = var.network_subnet_cidr
  internet_connection_enabled = var.internet_connection_enabled
  nsxt_password               = random_password.vmware_sddc_nsxt_password.result
  vcenter_password            = random_password.vmware_sddc_vcenter_password.result
  tags                        = var.tags
}