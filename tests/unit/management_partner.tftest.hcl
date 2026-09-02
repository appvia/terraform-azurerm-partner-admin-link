mock_provider "azapi" {}

run "accepts_integer_partner_id" {
  command = apply

  variables {
    partner_id = 6098754
  }

  assert {
    condition     = var.partner_id == 6098754
    error_message = "An integer partner_id should be accepted."
  }
}

run "rejects_fractional_partner_id" {
  command = plan

  variables {
    partner_id = 6098754.5
  }

  expect_failures = [
    var.partner_id
  ]
}
