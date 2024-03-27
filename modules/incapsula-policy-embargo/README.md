# Imperva incapsula-policy-dynamic-acl description

Configuration in this module allows to configure an embargo countries ACL policy and assign it to several sites


# Usage examples

```hcl
module "policy-embargo" {
  source                           = "../../modules/incapsula-policy-embargo"
  embargo_nation_block_policy_name = "My Embargo Nation Block"
  sites_ids                        = { site1 = module.my_site_multi_data_center.site_id }
}