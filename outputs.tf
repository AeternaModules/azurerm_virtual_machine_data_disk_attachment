output "virtual_machine_data_disk_attachments_id" {
  description = "Map of id values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = { for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : k => v.id }
}
output "virtual_machine_data_disk_attachments_caching" {
  description = "Map of caching values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = { for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : k => v.caching }
}
output "virtual_machine_data_disk_attachments_create_option" {
  description = "Map of create_option values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = { for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : k => v.create_option }
}
output "virtual_machine_data_disk_attachments_lun" {
  description = "Map of lun values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = { for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : k => v.lun }
}
output "virtual_machine_data_disk_attachments_managed_disk_id" {
  description = "Map of managed_disk_id values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = { for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : k => v.managed_disk_id }
}
output "virtual_machine_data_disk_attachments_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = { for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : k => v.virtual_machine_id }
}
output "virtual_machine_data_disk_attachments_write_accelerator_enabled" {
  description = "Map of write_accelerator_enabled values across all virtual_machine_data_disk_attachments, keyed the same as var.virtual_machine_data_disk_attachments"
  value       = { for k, v in azurerm_virtual_machine_data_disk_attachment.virtual_machine_data_disk_attachments : k => v.write_accelerator_enabled }
}

