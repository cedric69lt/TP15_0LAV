output "pub" {
  value     = tls_private_key.SSH.public_key_pem
  sensitive = true
}

output "private" {
  value = tls_private_key.SSH.private_key_pem
  sensitive = true
}

output "public_ips" {
  value = [for instance in azurerm_public_ip.test : instance.public_ip_address]
}
