module "remote_state" {
  source               = "./blob-storage-remote-state"
  project_name         = var.project_name
  environment          = var.environment
  region               = var.region
  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name
  container_name       = var.container_name
#  subscription_id = var.subscription_id
#  client_id = var.client_id
#  client_secret = var.client_secret
#  tenant_id = var.tenant_id
}

output "storage_name" {
  value = module.remote_state.storage_name
}
