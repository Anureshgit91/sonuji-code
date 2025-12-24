resource "random_password" "vm_password" {
  length  = 16
  special = true
}

resource "azurerm_key_vault_secret" "vm_password" {
  name         = "sonu-vm-password"
  value        = random_password.vm_password.result
  key_vault_id = var.key_vault_id
}
