variable "ips" {
  description = "(Optional) A comma separated list of IPs or IP ranges, e.g:[\"192.168.1.1\",\"192.168.1.1-192.168.1.100\",\"192.168.1.1/24\"]"
  type        = list(string)
  default     = null
  nullable    = true
}

variable "dynamic_allowlist_policy_name" {
  description = "(Required) A unique policy name."
  type        = string
}

variable "description" {
  description = "(Optional) The policy description."
  type        = string
  default     = "Dynamic Allowlist Block Policy"
  nullable    = true
}

variable "sites_ids" {
  description = "(Required) The Sites IDs that will be assigned to the policy. Only type of asset supported at the moment is site."
  type        = map(string)
  nullable    = false
  default     = {}
}
