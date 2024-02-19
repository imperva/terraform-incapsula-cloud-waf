variable "api_id" {
  description = "(Required) The Incapsula API id associated with the account. This can also be specified with the INCAPSULA_API_ID or TF_VAR_api_id shell environment variable."
  type        = string
  sensitive   = true
  default     = null
}

variable "api_key" {
  description = "(Required) The Incapsula API key. This can also be specified with the INCAPSULA_API_KEY or TF_VAR_api_key shell environment variable."
  type        = string
  sensitive   = true
  default     = null
}

variable "account_id" {
  description = "(Optional) The account to operate on. If not specified, operation will be performed on the account identified by the authentication parameters."
  type        = number
  nullable    = true
  default     = null
}
