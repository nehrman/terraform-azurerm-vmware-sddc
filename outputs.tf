output "hcx_cloud_manager_endpoint" {
  value = azurerm_vmware_private_cloud.vmware_sddc.hcx_cloud_manager_endpoint
}

output "nsxt_manager_endpoint" {
  value = azurerm_vmware_private_cloud.vmware_sddc.nsxt_manager_endpoint
}

output "vcsa_endpoint" {
  value = azurerm_vmware_private_cloud.vmware_sddc.vcsa_endpoint
}
