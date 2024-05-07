
# Imperva incapsula-waf-security-rule description

Configuration in this module allows to configure the api.threats.ddos, api.threats.bot_access_control and api.threats.backdoor WAF security rules and assign them to a site
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>


# Usage examples

```hcl
module "waf-security-rule" {
  source                        = "../../modules/incapsula-waf-security-rule"
  site_id                       = module.my_quickstart_site.site_id
  backdoor_security_rule_action = "api.threats.action.alert"
  block_bad_bots                = true
  challenge_suspected_bots      = "true"
  ddos_activation_mode          = "api.threats.ddos.activation_mode.on"
  ddos_traffic_threshold        = 3000
}
```

