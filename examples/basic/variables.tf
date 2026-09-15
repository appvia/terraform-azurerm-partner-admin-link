variable "partner_id" {
  type        = number
  description = "The Microsoft Partner Network (MPN) ID to link to the subscription."
  default     = 6098754
}

variable "delete_on_destroy" {
  type        = bool
  description = "Whether to delete the partner registration on destroy. Useful for testing and cleanup."
  default     = false
}
