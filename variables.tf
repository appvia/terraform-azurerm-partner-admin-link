variable "partner_id" {
  type        = number
  description = <<-DESCRIPTION
The Microsoft Partner Network (MPN) ID to link to the subscription. Defaults to Appview's MPN ID (6098754).

Note: **Do not use unknown values here**. Input the partner ID as a literal that is known at plan time.
DESCRIPTION
  default     = 6098754

  validation {
    condition     = var.partner_id >= 0
    error_message = "partner_id must not be negative"
  }

  validation {
    condition     = var.partner_id == floor(var.partner_id)
    error_message = "partner_id must be an integer."
  }
}

variable "delete_on_destroy" {
  type        = bool
  nullable    = false
  description = <<-DESCRIPTION
If true, the Management Partner resource will be deleted when the Terraform resource is destroyed.
If false, the Management Partner resource will remain in place after the Terraform resource is destroyed.

Note: to delete the management partner you must set this to `true` and run `terraform apply` before `terraform destroy`.
DESCRIPTION
  default     = false
}
