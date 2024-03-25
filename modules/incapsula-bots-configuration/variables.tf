variable "site_id" {
  description = "(Required) Numeric identifier of the site to operate on."
  default     = null
}

variable "canceled_good_bots" {
  description = "(Optional) List of Bot names taken from Imperva’s predefined list of bots. Default value is an empty list - Will restore the default Canceled Good Bots list. See https://docs.imperva.com/bundle/cloud-application-security/page/settings/client-classification.htm for bots list"
  type        = list(string)
  default     = null
}

variable "bad_bots" {
  description = "(Optional) List of Bot names taken from Imperva’s predefined list of bots. Default value is an empty list - Will restore the default Bad Bots list (empty list). see https://docs.imperva.com/bundle/cloud-application-security/page/settings/client-classification.htm for bots list"
  type        = list(string)
  default     = null
}
