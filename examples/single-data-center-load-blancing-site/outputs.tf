output "site_id" {
  description = "created site id"
  value = module.my_site_single_data_center.site_id
}

output "waf_policy_id" {
  description = "created WAF policy id"
  value = module.policy_dynamic_waf.policy_id
}
