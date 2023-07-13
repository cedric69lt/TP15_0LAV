output "pub" {
  value     = tls_private_key.SSH.public_key_pem
  sensitive = true
}

output "private" {
  value = tls_private_key.SSH.private_key_pem
  sensitive = true
}

output "public_ip" {
  value = azurerm_public_ip.test.Public_IP-${count.index}
}
