### GENERAL ###

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

### SUBSCRIPTION ###

#variable "subscription_id" {
#   type = string
# }
#variable "tenant_id" {
#   type = string
# }
#variable "client_id" {
#   type = string
# }
#variable "client_secret" {
#   type = string
# }

### REMOTE_STATE ###

variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

