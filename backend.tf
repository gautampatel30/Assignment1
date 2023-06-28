terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01596456G"
    storage_account_name = "tfstaten01596456sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    access_key           = "SYG4FS93MotNRUbmU9NrR0VuYJkAVfYC5alVPDzO3mWcFuD+LsMq1k+ef2xcEV+k6TP0whAHfMNq+AStJ2A1GQ=="
  }
}
