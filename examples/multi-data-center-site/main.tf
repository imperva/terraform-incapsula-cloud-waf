provider "incapsula" {
  api_id  = var.api_id # shell environment variable - TF_VAR_api_id
  api_key = var.api_key # shell environment variable - TF_VAR_api_key
}

##INFO: Example to creating a site with two servers and two data center using the incapsula-site-multi-dc-load-balancing module
module "my_site_multi_data_center" {
  source       = "../../modules/incapsula-site-multi-dc-load-balancing"
  domain       = "my-site-multi-dc.mydomain.co"
  data_centers = {
    dc1 = {
      name           = "my-data-center1"
      origin_servers = {
        os1 = {
          address = "4.4.4.4"
        }
      }
    },
    dc2 = {
      name           = "my-data-center2"
      origin_servers = {
        os1 = {
          address = "5.5.5.5"
        }
      }
    }
  }
}


##INFO: The following policy-embargo module creates policy with embargo countries block configuration at the account level and assign it to the created site
module "policy-embargo" {
  source                           = "../../modules/incapsula-policy-embargo"
  embargo_nation_block_policy_name = "My Embargo Nation Block"
  sites_ids                        = { site1 = module.my_site_multi_data_center.site_id }
}

##INFO: The following policies module creates an ACL policy with custom ip block configuration at the account level and assign it to the created site
module "policy-dynamic-acl-ips" {
  source                  = "../../modules/incapsula-policy-dynamic-acl"
  dynamic_acl_policy_name = "My ACL block IP policy"
  sites_ids               = { site1 = module.my_site_multi_data_center.site_id }
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
