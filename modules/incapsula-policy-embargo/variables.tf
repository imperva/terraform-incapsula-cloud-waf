variable "embargo_nation_block_policy_name" {
  description = "(Required) The policy name."
  type        = string
}


variable "sites_ids" {
  description = "(Required) The Sites IDs that will be assigned to the policy. Only type of asset supported at the moment is site."
  type        = map(string)
  default     = {}
}

