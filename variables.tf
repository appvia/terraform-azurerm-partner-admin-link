variable "partner_id" {
  type = number

  validation {
    condition     = var.partner_id == floor(var.partner_id)
    error_message = "partner_id must be an integer."
  }
}
