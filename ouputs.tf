output "pub" {
  value     = tls_private_key.SSH.public_key_pem
  sensitive = true
}

output "private" {
  value = tls_private_key.SSH.private_key_pem
  sensitive = true
}

output "public_ips" {
  value = [for instance in azurerm_public_ip.test : instance.name]
}

output "IP_pub_worker_0" {
  value = azurerm_public_ip.test[0].ip_address
}

output "IP_pub_worker_1" {
  value = azurerm_public_ip.test[1].ip_address
}

output "IP_pub_manager" {
  value = azurerm_public_ip.test[2].ip_address
}

output "vm_usernames" {
   value = azurerm_linux_virtual_machine. admin_username
}
