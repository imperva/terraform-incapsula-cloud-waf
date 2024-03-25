variable "site_id" {
  description = "(Required) Numeric identifier of the site to operate on."
  default     = null
}

#For example, if a ASN is used as the filter parameter, then that ASN can be dynamically applied to multiple rules, using this variable.
variable "rules" {
  description = "(Required) List of rules to apply to the site."
  type        = map(object({
    name             = string
    action           = string
    filter           = optional(string)
    dc_id            = optional(string)
    response_code    = optional(string)
    from             = optional(string)
    to               = optional(string)
    add_missing      = optional(string)
    rewrite_existing = optional(string)
    rewrite_name     = optional(string)
  }))
  nullable = false
}