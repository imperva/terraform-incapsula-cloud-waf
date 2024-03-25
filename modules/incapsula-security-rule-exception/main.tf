##INFO: The incapsula_security_rule_exception resource includes 3 rule_id types (api.threats.backdoor, api.threats.bot_access_control, api.threats.ddos).
# Use the depends_on meta-argument, if you want to execute more than 1 rule_id.

resource "incapsula_security_rule_exception" "security-rule-exception-waf-backdoor" {
  site_id      = var.site_id
  rule_id      = "api.threats.backdoor"
  client_apps  = var.backdoor_security_rule_exception.client_apps
  continents   = var.backdoor_security_rule_exception.continents
  countries    = var.backdoor_security_rule_exception.countries
  ips          = var.backdoor_security_rule_exception.ips
  url_patterns = var.backdoor_security_rule_exception.url_patterns
  urls         = var.backdoor_security_rule_exception.urls
  user_agents  = var.backdoor_security_rule_exception.user_agents
  parameters   = var.backdoor_security_rule_exception.parameters
}

resource "incapsula_security_rule_exception" "security-rule-exception-bot-access-control" {
  site_id          = var.site_id
  rule_id          = "api.threats.bot_access_control"
  client_app_types = var.bot_access_control_security_rule_exception.client_app_types
  ips              = var.bot_access_control_security_rule_exception.ips
  url_patterns     = var.bot_access_control_security_rule_exception.url_patterns
  urls             = var.bot_access_control_security_rule_exception.urls
  user_agents      = var.bot_access_control_security_rule_exception.user_agents
  depends_on       = [
    incapsula_security_rule_exception.security-rule-exception-waf-backdoor,
  ]
}

resource "incapsula_security_rule_exception" "security-rule-exception-ddos" {
  site_id      = var.site_id
  rule_id      = "api.threats.ddos"
  client_apps  = var.ddos_security_rule_exception.client_apps
  continents   = var.ddos_security_rule_exception.continents
  countries    = var.ddos_security_rule_exception.countries
  ips          = var.ddos_security_rule_exception.ips
  url_patterns = var.ddos_security_rule_exception.url_patterns
  urls         = var.ddos_security_rule_exception.urls
  depends_on   = [
    incapsula_security_rule_exception.security-rule-exception-bot-access-control,
  ]
}