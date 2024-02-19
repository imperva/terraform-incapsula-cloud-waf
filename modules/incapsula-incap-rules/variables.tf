variable "site_id" {
  description = "(Required) Numeric identifier of the site to operate on."
  default     = null
}

#For example, if a ASN is used as the filter parameter, then that ASN can be dynamically applied to multiple rules, using this variable.
variable "rules" {
  description = "(Required) List of rules to apply to the site."
  type        = map(object({
    name   = string
    action = string
    filter = string
  }))
  nullable = false
}