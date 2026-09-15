locals {
  resource_id   = "/providers/Microsoft.ManagementPartner/partners/${var.partner_id}"
  resource_type = "Microsoft.ManagementPartner/partners@2018-02-01"
  resource_export_values = [
    "properties.state",
    "properties.partnerName",
  ]
}

resource "azapi_resource_action" "management_partner_create" {
  type                   = local.resource_type
  resource_id            = local.resource_id
  method                 = "PUT"
  body                   = {}
  response_export_values = local.resource_export_values
}

# Optional delete method to remove the partner registration on destroy. This is useful for testing and cleanup.
# Requires the resource to be created first, so needs an apply (an Azure no-op) before destroy will work.
resource "azapi_resource_action" "management_partner_delete" {
  count                  = var.delete_on_destroy ? 1 : 0
  type                   = local.resource_type
  resource_id            = local.resource_id
  method                 = "DELETE"
  body                   = {}
  when                   = "destroy"
  response_export_values = []
  depends_on = [
    azapi_resource_action.management_partner_create
  ]
}
