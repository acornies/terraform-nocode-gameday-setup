module "hcp_vault_setup" {
  source  = "app.terraform.io/ender-corp/gameday-setup-vault/hcp"
  version = "0.0.5"
  # insert required variables here
  event_name                = var.event_name
  cloud_provider            = "aws"
  region                    = "us-east-1"
  hcp_vault_public_endpoint = true
  hcp_vault_tier            = "dev"
}

module "vault_participant_namespaces" {
  source  = "app.terraform.io/ender-corp/gameday-setup-vault/vault"
  version = "0.0.5"
  # insert required variables here
  event_name          = var.event_name
  github_organization = var.github_organization
  participants        = local.participants
  vault_address       = module.hcp_vault_setup.hcp_vault_endpoint
  vault_token         = module.hcp_vault_setup.hcp_vault_admin_token
}