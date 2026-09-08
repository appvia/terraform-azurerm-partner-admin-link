locals {
  resource_id   = "/providers/Microsoft.ManagementPartner/partners/${var.partner_id}"
  resource_type = "Microsoft.ManagementPartner/partners@2018-02-01"
  resource_export_values = [
    "properties.state",
    "properties.partnerName",
  ]
}

# Check if the resource exists as the API requires PATCH if it does.
# This makes the module more flexible if the parter ID is registered multiple times for the same identity.
data "azapi_resource" "management_partner" {
  type                   = "Microsoft.ManagementPartner/partners@2018-02-01"
  resource_id            = local.resource_id
  ignore_not_found       = true
  response_export_values = []
}

resource "azapi_resource_action" "management_partner_create" {
  count                  = data.azapi_resource.management_partner.exists ? 0 : 1
  type                   = local.resource_type
  resource_id            = local.resource_id
  method                 = "PUT"
  body                   = {}
  response_export_values = local.resource_export_values
}

resource "azapi_resource_action" "management_partner_patch" {
  count                  = data.azapi_resource.management_partner.exists ? 1 : 0
  type                   = local.resource_type
  resource_id            = local.resource_id
  method                 = "PATCH"
  body                   = {}
  response_export_values = local.resource_export_values
}

# Optional delete method to remove the partner registration on destroy. This is useful for testing and cleanup.
# Requires the resource to be created first, so needs an apply (an Azure no-op) before destroy will work.
resource "azapi_resource_action" "management_partner_delete" {
  count                  = var.delete_on_destroy && data.azapi_resource.management_partner.exists ? 1 : 0
  type                   = local.resource_type
  resource_id            = local.resource_id
  method                 = "DELETE"
  body                   = {}
  when                   = "destroy"
  response_export_values = []
}
