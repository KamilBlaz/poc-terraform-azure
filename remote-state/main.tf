variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

module "remote_state" {
  source               = "./blob-storage-remote-state"
  project_name         = var.project_name
  environment          = var.environment
  region               = var.region
  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name
  container_name       = var.container_name
}

output "storage_name" {
  value = module.remote_state.storage_name
}
