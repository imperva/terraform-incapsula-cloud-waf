output "waf-backdoor-rule" {
  value = incapsula_waf_security_rule.waf-backdoor-rule
}

output "waf-bot-access-control-rule" {
  value = incapsula_waf_security_rule.waf-bot-access-control-rule
}

output "waf-ddos-rule" {
  value = incapsula_waf_security_rule.waf-ddos-rule
}