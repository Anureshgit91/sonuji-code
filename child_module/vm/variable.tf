variable "name" {}
variable "location" {}
variable "vm_location" {
  type        = string
  default     = ""
  description = "Optional override location for the VM; if empty, uses var.location"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B1s"
  description = "VM size to use for the virtual machine. Override if the requested SKU is not available in the region."
}

variable "resource_group_name" {}
variable "nic_id" {}
variable "admin_username" {}
variable "admin_password" {
  type      = string
  sensitive = true
}
variable "key_vault_id" {}

