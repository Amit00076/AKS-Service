# outputs.tf

output "service_plan_id" {
  description = "The ID of the created service plan."
  value       = azurerm_service_plan.id
}


output "service_plan_name" {
  value = azurerm_app_service_plan.asp.name
}
---------------------------------------------------------------

