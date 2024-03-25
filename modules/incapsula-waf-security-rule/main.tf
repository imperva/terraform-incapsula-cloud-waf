##INFO: The incapsula_waf_security_rule resource includes 3 rule_id types (api.threats.backdoor, api.threats.bot_access_control, api.threats.ddos).
# Use the depends_on meta-argument, if you want to execute more than 1 rule_id.

resource "incapsula_waf_security_rule" "waf-backdoor-rule" {
  site_id              = var.site_id
  rule_id              = "api.threats.backdoor"
  security_rule_action = var.backdoor_security_rule_action
}

resource "incapsula_waf_security_rule" "waf-bot-access-control-rule" {
  site_id                  = var.site_id
  rule_id                  = "api.threats.bot_access_control"
  block_bad_bots           = var.block_bad_bots
  challenge_suspected_bots = var.challenge_suspected_bots
  depends_on               = [
    incapsula_waf_security_rule.waf-backdoor-rule,
  ]
}

resource "incapsula_waf_security_rule" "waf-ddos-rule" {
  site_id                = var.site_id
  rule_id                = "api.threats.ddos"
  activation_mode        = var.ddos_activation_mode
  ddos_traffic_threshold = var.ddos_traffic_threshold
  depends_on             = [
    incapsula_waf_security_rule.waf-bot-access-control-rule,
  ]
}