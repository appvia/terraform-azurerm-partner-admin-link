locals {
  output_partner_name = coalesce(
    try(azapi_resource_action.management_partner_create[0].output.properties.partnerName, null),
    try(azapi_resource_action.management_partner_patch[0].output.properties.partnerName, null),
  )
  output_state = coalesce(
    try(azapi_resource_action.management_partner_create[0].output.properties.state, null),
    try(azapi_resource_action.management_partner_patch[0].output.properties.state, null),
  )
}

output "partner_name" {
  value       = local.output_partner_name
  description = "The name of the partner associated with the tenant."
}

output "status" {
  value       = local.output_state
  description = "The status of the partner association with the tenant."
}
