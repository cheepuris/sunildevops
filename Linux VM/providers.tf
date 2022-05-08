terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "8f02edef-2d6d-4d3d-a73f-8321390ab14c"
  client_id       = "e2f56557-700e-44a4-b258-6e44800fe528"
  tenant_id       = "f22a6f66-05b7-442a-8a06-24a74c94a04e"
  client_secret   = ".SN8Q~m7lCohkkBajoz-.gEwv_TdFQh4qk7L2btt"

}

terraform {
  backend "azurerm" {
    storage_account_name = "_terraformstorageaccount_"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "_storagekey_"
  }
}
