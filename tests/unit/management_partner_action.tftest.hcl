mock_provider "azapi" {}

run "configures_management_partner_put" {
  command = apply

  variables {
    partner_id = 6098754
  }

  assert {
    condition     = azapi_resource_action.management_partner.type == "Microsoft.ManagementPartner/partners@2018-02-01"
    error_message = "The action must use the Management Partner API type and version."
  }

  assert {
    condition     = azapi_resource_action.management_partner.resource_id == "/providers/Microsoft.ManagementPartner/partners/6098754"
    error_message = "The action must target the tenant-scoped integer partner resource ID."
  }

  assert {
    condition     = azapi_resource_action.management_partner.method == "PUT"
    error_message = "The action must use PUT."
  }
}
