output "virtual_machine_data_disk_attachments" {
  description = "All virtual_machine_data_disk_attachment resources"
  value       = azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments
}
output "virtual_machine_data_disk_attachments_caching" {
  description = "List of caching values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : v.caching]
}
output "virtual_machine_data_disk_attachments_create_option" {
  description = "List of create_option values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : v.create_option]
}
output "virtual_machine_data_disk_attachments_lun" {
  description = "List of lun values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : v.lun]
}
output "virtual_machine_data_disk_attachments_managed_disk_id" {
  description = "List of managed_disk_id values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : v.managed_disk_id]
}
output "virtual_machine_data_disk_attachments_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : v.virtual_machine_id]
}
output "virtual_machine_data_disk_attachments_write_accelerator_enabled" {
  description = "List of write_accelerator_enabled values across all virtual_machine_data_disk_attachments"
  value       = [for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : v.write_accelerator_enabled]
}

