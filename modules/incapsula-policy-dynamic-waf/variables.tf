variable "remote_file_inclusion_action" {
  description = "(Optional) The remote file inclusion action to apply. Valid values are: IGNORE, ALERT , BLOCK, BLOCK_USER, BLOCK_IP, or MASK."
  type        = string
  default     = "BLOCK"
  nullable    = true
}

variable "illegal_resource_access_action" {
  description = "(Optional) The illegal resource access action to apply. Valid values are: IGNORE, ALERT , BLOCK, BLOCK_USER, BLOCK_IP, or MASK."
  type        = string
  default     = "BLOCK"
  nullable    = true
}

variable "cross_site_scripting_action" {
  description = "(Optional) The cross site scripting action to apply. Valid values are: IGNORE, ALERT , BLOCK, BLOCK_USER, BLOCK_IP, or MASK."
  type        = string
  default     = "BLOCK"
  nullable    = true
}

variable "sql_injection_action" {
  description = "(Optional) The SQL injection action to apply. Valid values are: IGNORE, ALERT , BLOCK, BLOCK_USER, BLOCK_IP, or MASK."
  type        = string
  default     = "BLOCK"
  nullable    = true
}

variable "dynamic_acl_policy_name" {
  description = "(Required) A unique policy name."
  type        = string
}

variable "description" {
  description = "(Optional) The policy description."
  type        = string
  default     = "Dynamic WAF Policy"
  nullable    = true
}

variable "sites_ids" {
  description = "(Required) The Sites IDs that will be assigned to the policy. Only type of asset supported at the moment is site."
  type        = map(string)
  nullable    = false
  default     = {}
}
