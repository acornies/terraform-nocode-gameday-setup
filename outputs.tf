output "vault_address" {
  value = module.hcp_vault_setup.hcp_vault_endpoint
}

output "vault_namespaces" {
  value = module.vault_participant_namespaces.vault_namespaces
}

output "terraform_workspaces" {
  value = module.hcp_terraform_setup.terraform_workspaces
}

output "terraform_workspace_tokens" {
  value = module.hcp_terraform_setup.terraform_workspace_tokens
  sensitive = true
}