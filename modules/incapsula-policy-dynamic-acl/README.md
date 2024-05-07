# Imperva incapsula-policy-dynamic-acl description

Configuration in this module allows to configure an ACL policy and assign it to several sites
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>


# Usage examples

```hcl
##INFO: The following policies module creates an ACL policy with custom ip block configuration at the account level and assign it to the created sites
module "policy-dynamic-acl-ips" {
  source                  = "../../modules/incapsula-policy-dynamic-acl"
  dynamic_acl_policy_name = "My ACL block IP policy"
  sites_ids               = { site1 = module.my_site_multi_data_center.site_id, module.my_site_single_data_center.site_id }
  ips                     = ["1.2.3.6", "1.2.3.7"]
}

##INFO: The following policies module creates an ACL policy with custom countries and urls block configuration at the account level and assign it to the created site
module "policy-dynamic-acl-url-at-geo" {
  source                  = "../../modules/incapsula-policy-dynamic-acl"
  dynamic_acl_policy_name = "My ACL block URLs at location policy"
  description             = "This policy blocks access to the admin and supervisor URLs from the US and AM"
  sites_ids               = { site1 = module.my_site_multi_data_center.site_id }
  countries               = ["US", "AM"]
  urls                    = { "/admin" = "EQUALS", "/supervisor/" = "PREFIX" }
}
```