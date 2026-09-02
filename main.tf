resource "azapi_resource_action" "management_partner" {
  type        = "Microsoft.ManagementPartner/partners@2018-02-01"
  resource_id = "/providers/Microsoft.ManagementPartner/partners/${format("%.0f", var.partner_id)}"
  method      = "PUT"
}
