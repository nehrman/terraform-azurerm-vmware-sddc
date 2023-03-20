# Azure VMware Private Cloud Module

A Terraform module which creates VMWare Private Cloud on Azure with the following characteristics:
- Create deddicated Resource Group
- Create one subnet (recommended /22)
- Generate dynamic passwords for NSXT and vCenter
- Deploy a VMware Private Cloud

## Terraform versions

Support Terraform 1.x and above

## Usage

VMWare Private Cloud Creation example:

```hcl
module "vmware_sddc" {
  source                      = "app.terraform.io/<ORG_NAME>/vmware-sddc/azurerm"
  version                     = "1.0.0"
  resource_group_name         = "vmware-sddc-test"
  location                    = "westeurope"
  vmware_sddc_name            = "sddc-terraform-test"
  sku_name                    = "av20"
  management_cluster_size     = 3
  network_subnet_cidr         = "192.168.10.0/22"
  internet_connection_enabled = true
  tags = {
    environment = "test"
  }
}
```

## Authors

* **Nicolas Ehrman** - *Initial work* - [Wiz](https://wiz.io)



