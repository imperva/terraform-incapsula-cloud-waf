variable "site_id" {
  description = "(Required) Numeric identifier of the site to operate on."
  default     = null
}

variable "backdoor_security_rule_action" {
  description = "(Optional) security_rule_action parameter - The action that should be taken when a threat is detected. Example of a way to use a variable to set the security_rule_action parameter to the api.threats.action.alert value. For the api.threats.backdoor rule_id parameter, the valid security_rule_action values are: api.threats.action.quarantine_url (default) | api.threats.action.alert | api.threats.action.disabled"
  default     = "api.threats.action.quarantine_url"
  nullable    = true
}

variable "block_bad_bots" {
  description = "(Optional) Whether or not to block bad bots. The valid values: true (default), false."
  default     = "true"
  nullable    = true
}

variable "challenge_suspected_bots" {
  description = "(Optional) Whether or not to send a challenge to clients that are suspected to be bad bots (CAPTCHA for example). The valid values: true (default), false."
  default     = "true"
  nullable    = true
}

variable "ddos_activation_mode" {
  description = "(Optional) activation_mode parameter - The mode of activation for ddos on a site. The valid values for activation_mode parameter: api.threats.ddos.activation_mode.auto (default) | api.threats.ddos.activation_mode.on | api.threats.ddos.activation_mode.off"
  default     = "api.threats.ddos.activation_mode.on"
  nullable    = true
}

variable "ddos_traffic_threshold" {
  description = "(Optional) Consider site to be under DDoS if the request rate is above this threshold. The valid values are 10, 20, 50, 100, 200, 500, 750, 1000, 2000, 3000, 4000, 5000."
  default     = "5000"
  nullable    = true
}