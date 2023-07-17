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

output "IP_worker_0" {
  value = IP_pub_worker_0
}

output "IP_worker_1" {
  value = IP_pub_worker_1
}

output "IP_manager" {
  value = IP_pub_manager
}
