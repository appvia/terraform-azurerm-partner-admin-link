locals {
  output_partner_name = azapi_resource_action.management_partner_create.output.properties.partnerName
  output_state        = azapi_resource_action.management_partner_create.output.properties.state
}

output "partner_name" {
  value       = local.output_partner_name
  description = "The name of the partner associated with the tenant."
}

output "state" {
  value       = local.output_state
  description = "The state of the partner association with the tenant."
}
