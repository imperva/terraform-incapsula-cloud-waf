# Imperva incapsula-policy-dynamic-waf description

Configuration in this module allows to configure a WAF rules policy and assign it to several sites
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>


# Usage examples

```hcl
module "policy_dynamic_waf" {
  source                       = "../../modules/incapsula-policy-dynamic-waf"
  dynamic_waf_policy_name      = "My WAF rule policy"
  sites_ids                    = { site1 = module.my_site_single_data_center.site_id }
}

module "policy_dynamic_waf2" {
  source                         = "../../modules/incapsula-policy-dynamic-waf"
  dynamic_waf_policy_name        = "My WAF rule policy"
  sites_ids                      = { site1 = module.my_site_single_data_center.site_id, site2 = module.my_site_multi_data_center.site_id }
  remote_file_inclusion_action   = "ALERT"
  sql_injection_action           = "ALERT"
  cross_site_scripting_action    = "ALERT"
  illegal_resource_access_action = "ALERT"
}
```