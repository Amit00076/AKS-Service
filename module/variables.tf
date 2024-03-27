# variables.tf

variable "service_plan_name" {
  description = "The name of the service plan."
  type        = string
}

variable "location" {
  description = "The Azure region where the service plan will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the service plan will be created."
  type        = string
}

variable "sku_tier" {
  description = "The tier of the service plan SKU."
  type        = string
}

variable "sku_size" {
  description = "The size of the service plan SKU."
  type        = string
}


variable "sku_name" {
  description = "The SKU name for the Service Plan."
  type        = string
}

variable "os_type" {
  description = "The OS type for the Service Plan."
  type        = string
}

--------------------------------------------------------------------
