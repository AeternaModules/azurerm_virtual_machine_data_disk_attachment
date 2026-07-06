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
    create_option             = optional(string) # Default: "Attach"
    write_accelerator_enabled = optional(bool)   # Default: false
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_data_disk_attachments : (
        v.lun >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_machine_data_disk_attachment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: managed_disk_id
  #   source:    [from commonids.ValidateManagedDiskID] !ok
  # path: managed_disk_id
  #   source:    [from commonids.ValidateManagedDiskID] err != nil
  # path: virtual_machine_id
  #   source:    [from commonids.ValidateVirtualMachineID] !ok
  # path: virtual_machine_id
  #   source:    [from commonids.ValidateVirtualMachineID] err != nil
  # path: caching
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: create_option
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

