output "vault_address" {
  value = module.hcp_vault_setup.hcp_vault_endpoint
}

output "vault_namespaces" {
  value = module.vault_namespaces.vault_namespaces
}
output "vault_token" {
  value     = module.hcp_vault_setup.hcp_vault_admin_token
  sensitive = true
}

output "aws_participant_sqs_url" {
  value = module.aws_central.aws_participant_sqs_url
}

output "aws_leaderboard_sqs_url" {
  value = module.aws_central.aws_leaderboard_sqs_url
}

output "aws_leaderboard_http_function_url" {
  value = module.aws_central.aws_leaderboard_http_function_url
}

output "aws_leaderboard_rds_instance_password" {
  value     = module.aws_central.aws_leaderboard_rds_instance_password
  sensitive = true
}

output "aws_leaderboard_rds_instance_address" {
  value = module.aws_central.aws_leaderboard_rds_instance_address
}

output "aws_leaderboard_rds_instance_endpoint" {
  value = module.aws_central.aws_leaderboard_rds_instance_endpoint
}

output "aws_leaderboard_html_endpoint" {
  value = module.aws_central.aws_leaderboard_html_endpoint
}