# Imperva incapsula-policy-dynamic-allowlist description

Configuration in this module allows to configure an allowlist policy and assign it to several sites
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>

# Usage examples

```hcl
module "policy-dynamic-allowlist-ips" {
  source                        = "../../modules/incapsula-policy-dynamic-allowlist"
  dynamic_allowlist_policy_name = "My Allowlist block IP policy"
  sites_ids                     = { site1 = module.my_quickstart_site.site_id, site2 = module.my_site.site_id }
  ips                           = ["1.2.3.6", "1.2.3.7"]
}
```