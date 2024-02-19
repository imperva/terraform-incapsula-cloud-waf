provider "incapsula" {
  api_id  = var.api_id # shell environment variable - TF_VAR_api_id
  api_key = var.api_key # shell environment variable - TF_VAR_api_key
}
##INFO: Example to creating a site with two servers and single data center using the incapsula-site-single-dc-load-balancing module
module "my_site_single_data_center" {
  source      = "../../modules/incapsula-site-single-dc-load-balancing"
  domain      = "my-site-single-dc.mydomain.co"
  data_center = {
    name           = "my-data-center"
    origin_servers = {
      os1 = {
        address = "2.2.2.2"
      },
      os2 = {
        address = "3.3.3.3"
      }
    }
  }
}


##INFO: The following policies module creates a WAF policy with custom Remote file inclusion configuration at the account level and assign it to no site
module "policy_dynamic_waf" {
  source                       = "../../modules/incapsula-policy-dynamic-waf"
  dynamic_acl_policy_name      = "My WAF rule policy"
  sites_ids                    = { site1 = module.my_site_single_data_center.site_id }
  remote_file_inclusion_action = "ALERT"
}