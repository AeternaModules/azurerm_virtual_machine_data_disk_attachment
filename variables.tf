variable "virtual_machine_data_disk_attachments" {
  description = <<EOT
Map of virtual_machine_data_disk_attachments, attributes below
Required:
    - caching
    - lun
    - managed_disk_id
    - virtual_machine_id
Optional:
    - create_option
    - write_accelerator_enabled
EOT

  type = map(object({
    caching                   = string
    lun                       = number
    managed_disk_id           = string
    virtual_machine_id        = string
    create_option             = optional(string)
    write_accelerator_enabled = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_data_disk_attachments : (
        v.lun >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

