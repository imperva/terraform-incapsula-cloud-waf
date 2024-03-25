output "site_id" {
  description = "created site id"
  value       = module.my_site_multi_data_center.site_id
}

output "embargo_policy_id" {
  description = "created embrgo policy id"
  value       = module.policy-embargo.policy_id
}


output "acl_ips_policy_id" {
  description = "created embrgo policy id"
  value       = module.policy-dynamic-acl-ips.policy_id
}


output "url_geo_acl_policy_id" {
  description = "created embrgo policy id"
  value       = module.policy-dynamic-acl-url-at-geo.policy_id
}