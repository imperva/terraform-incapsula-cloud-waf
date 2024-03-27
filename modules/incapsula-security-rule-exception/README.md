# Imperva incapsula-policy-dynamic-acl description

Configuration in this module allows to configure multiple security rules exceptions and assign them to a site


# Usage examples

```hcl
module "security-rule-exceptions" {
  source  = "../../modules/incapsula-security-rule-exception"
  site_id = module.my_quickstart_site.site_id

  backdoor_security_rule_exception = {
    continents   = "NA"
    countries    = "US"
    ips          = "3.3.4.4"
    url_patterns = "EQUALS,EQUALS,EQUALS"
    urls         = "/myurl1.html,/index.html,/myurl.html"
  }

  bot_access_control_security_rule_exception = {
    ips          = "5.5.6.6"
    url_patterns = "EQUALS,EQUALS,EQUALS"
    urls         = "/myurl1.html,/index.html,/myurl.html"
  }

  ddos_security_rule_exception = {
    ips = "7.7.8.8"
  }
}