output "vault_address" {
  value = module.hcp_vault_setup.hcp_vault_endpoint
}

output "vault_namespaces" {
  value = module.vault_namespaces.vault_namespaces
}