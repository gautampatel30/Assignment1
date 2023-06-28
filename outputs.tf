output "rgroup_name" {
  description = "Name of the resource group"
  value       = module.rgroup-n01696456.resource_group_name
}

output "network_name" {
  description = "Name of the virtual network"
  value       = module.network-n01696456.virtual_network_name
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = module.network-n01696456.subnet_name
}

output "common_workspace_name" {
  description = "Name of the log analytics workspace"
  value       = module.common-n01696456.log_analytics_workspace_name
}

output "common_vault_name" {
  description = "Name of the recovery services vault"
  value       = module.common-n01696456.recovery_services_vault_name
}

output "common_storage_account_name" {
  description = "Name of the storage account"
  value       = module.common-n01696456.storage_account_name
}

output "vmlinux_hostnames" {
  description = "Hostnames of the Linux VMs"
  value       = module.vmlinux-n01696456.vm_hostnames
}

output "vmlinux_domain_names" {
  description = "Domain names of the Linux VMs"
  value       = module.vmlinux-n01696456.vm_domain_names
}

output "vmlinux_private_ips" {
  description = "Private IP addresses of the Linux VMs"
  value       = module.vmlinux-n01696456.vm_private_ips
}

output "vmlinux_public_ips" {
  description = "Public IP addresses of the Linux VMs"
  value       = module.vmlinux-n01696456.vm_public_ips
}

output "vmwindows_hostname" {
  description = "Hostname of the Windows VM"
  value       = module.vmwindows-n01696456.vm_hostname
}

output "vmwindows_domain_name" {
  description = "Domain name of the Windows VM"
  value       = module.vmwindows-n01696456.vm_domain_name
}

output "vmwindows_private_ip" {
  description = "Private IP address of the Windows VM"
  value       = module.vmwindows-n01696456.vm_private_ip
}

output "vmwindows_public_ip" {
  description = "Public IP address of the Windows VM"
  value       = module.vmwindows-n01696456.vm_public_ip
}

output "datadisk_names" {
  description = "Names of the data disks"
  value       = module.datadisk-n01696456.disk_names
}

output "loadbalancer_name" {
  description = "Name of the load balancer"
  value       = module.loadbalancer-n01696456.load_balancer_name
}

output "database_name" {
  description = "Name of the Azure DB for PostgreSQL instance"
  value       = module.database-n01696456.database_name
}
