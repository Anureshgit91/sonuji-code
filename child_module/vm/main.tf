resource "azurerm_windows_virtual_machine" "vm" {
  name                = var.name
  location            = var.vm_location != "" ? var.vm_location : var.location
  resource_group_name = var.resource_group_name
  size                = var.vm_size
  computer_name       = "sonuvm"

  admin_username = var.admin_username
  admin_password = var.admin_password

  network_interface_ids = [var.nic_id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}

