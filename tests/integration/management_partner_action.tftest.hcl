run "configures_management_partner_put" {
  command = apply

  variables {
    delete_on_destroy = true
    partner_id        = 6098754
  }

  assert {
    condition     = local.output_state != null
    error_message = "The action must return a state value."
  }

  assert {
    condition     = local.output_partner_name != null
    error_message = "The action must return a partnerName value."
  }
}
