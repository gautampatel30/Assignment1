terraform {
  required_version = ">= 0.13"
}

module "rgroup-n01696456" {
  source              = "https://drive.google.com/drive/folders/1Cyo5At5SxxRqjkvtfXOQ_tvE9-XhC8hh?usp=drive_link"
  resource_group_name = "n01696456RG"
  location            = "westeurope"
}

module "network-n01696456" {
  source              = "https://drive.google.com/drive/folders/1d0a4l6d9Dpt0vMolqmo1TGAUELrgV-0Z?usp=drive_link"
  resource_group_name = module.rgroup-n01696456.resource_group_name
  location            = module.rgroup-n01696456.location
  subnet_name         = "n01696456SUBNET"
}

module "common-n01696456" {
  source              = "https://drive.google.com/drive/folders/1IbUTyocBeb-J5kQK52zFMEtrndiBZRoO?usp=drive_link"
  resource_group_name = module.rgroup-n01696456.resource_group_name
  location            = module.rgroup-n01696456.location
}

module "vmlinux-n01696456" {
  source              = "https://drive.google.com/drive/folders/1BOb3Izx4r9Lwa7U-1GMXnFGwekrg3ivw?usp=drive_link"
  resource_group_name = module.rgroup-n01696456.resource_group_name
  location            = module.rgroup-n01696456.location
  subnet_id           = module.network-n01696456.subnet_id
  vm_count            = 3
}

module "vmwindows-n01696456" {
  source              = "https://drive.google.com/drive/folders/1LAT4nSY9vt2C2FMN_zP1xLTYmpSzjJOt?usp=drive_link"
  resource_group_name = module.rgroup-n01696456.resource_group_name
  location            = module.rgroup-n01696456.location
  subnet_id           = module.network-n01696456.subnet_id
  vm_count            = 1
}

module "datadisk-n01696456" {
  source              = "https://drive.google.com/drive/folders/1GbRm8ZpRYQoGKNx7dlEu-nOkthE1mHvd?usp=drive_link"
  resource_group_name = module.rgroup-n01696456.resource_group_name
  location            = module.rgroup-n01696456.location
  vm_ids              = concat(module.vmlinux-n01696456.vm_ids, module.vmwindows-n01696456.vm_ids)
}

module "loadbalancer-n01696456" {
  source              = "https://drive.google.com/drive/folders/15aap7j_gF_8pxeOlYeGLl5yEMzRk3mLx?usp=drive_link"
  resource_group_name = module.rgroup-n01696456.resource_group_name
  location            = module.rgroup-n01696456.location
  subnet_id           = module.network-n01696456.subnet_id
  vm_ids              = module.vmlinux-n01696456.vm_ids
}

module "database-n01696456" {
  source              = "https://drive.google.com/drive/folders/1CTmf46aVZ13eSTXCZrvsdFrIqqDn0u9V?usp=drive_link"
  resource_group_name = module.rgroup-n01696456.resource_group_name
  location            = module.rgroup-n01696456.location
}

output "rgroup_name" {
  value = module.rgroup-n01696456.resource_group_name
}

output "network_name" {
  value = module.network-n01696456.virtual_network_name
}

output "subnet_name" {
  value = module.network-n01696456.subnet_name
}

output "common_workspace_name" {
  value = module.common-n01696456.log_analytics_workspace_name
}

output "common_vault_name" {
  value = module.common-n01696456.recovery_services_vault_name
}

output "common_storage_account_name" {
  value = module.common-n01696456.storage_account_name
}

output "vmlinux_hostnames" {
  value = module.vmlinux-n01696456.vm_hostnames
}

output "vmlinux_domain_names" {
  value = module.vmlinux-n01696456.vm_domain_names
}

output "vmlinux_private_ips" {
  value = module.vmlinux-n01696456.vm_private_ips
}

output "vmlinux_public_ips" {
  value = module.vmlinux-n01696456.vm_public_ips
}

output "vmwindows_hostname" {
  value = module.vmwindows-n01696456.vm_hostname
}

output "vmwindows_domain_name" {
  value = module.vmwindows-n01696456.vm_domain_name
}

output "vmwindows_private_ip" {
  value = module.vmwindows-n01696456.vm_private_ip
}

output "vmwindows_public_ip" {
  value = module.vmwindows-n01696456.vm_public_ip
}

output "datadisk_names" {
  value = module.datadisk-n01696456.disk_names
}

output "loadbalancer_name" {
  value = module.loadbalancer-n01696456.load_balancer_name
}

output "database_name" {
  value = module.database-n01696456.database_name
}
