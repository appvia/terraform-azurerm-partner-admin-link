output "example" {
  value = {
    partner_id = module.partner_admin_link.partner_name
    state      = module.partner_admin_link.state
  }
  description = "The partner name and state returned from the management partner registration."
}
