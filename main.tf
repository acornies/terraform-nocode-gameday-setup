module "hcp_vault_setup" {
  source  = "app.terraform.io/ender-corp/gameday-setup-vault/hcp"
  version = "0.0.6"
  # insert required variables here
  event_name                = var.event_name
  cloud_provider            = "aws"
  region                    = var.region
  hcp_vault_public_endpoint = true
  hcp_vault_tier            = "dev"
}

module "vault_namespaces" {
  source  = "app.terraform.io/ender-corp/gameday-setup-vault/vault"
  version = "0.0.7"
  # insert required variables here
  event_name          = var.event_name
  github_organization = var.github_organization
  participants        = local.participants
  vault_address       = module.hcp_vault_setup.hcp_vault_endpoint
  vault_token         = module.hcp_vault_setup.hcp_vault_admin_token
}

module "aws_central" {
  source  = "app.terraform.io/ender-corp/gameday-setup-aws/aws"
  version = "0.1.2"
  # insert required variables here
  event_name               = var.event_name
  region                   = var.region
  leaderboard_http_image   = var.leaderboard_http_image
  leaderboard_record_image = var.leaderboard_record_image
  vault_address            = module.hcp_vault_setup.hcp_vault_endpoint
  vault_token              = module.hcp_vault_setup.hcp_vault_admin_token
  vault_namespace          = "admin/${module.vault_namespaces.facilitator_namespace}"
}