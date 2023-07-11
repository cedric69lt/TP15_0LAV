output "pub" {
  value     = tls_private_key.SSH.public_key_pem
  sensitive = false
}

output "private" {
  value = tls_private_key.SSH.private_key_pem
  sensitive = false
}
