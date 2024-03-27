# Imperva incapsula-policy-dynamic-acl description

Configuration in this module a single data center site with load balancing (multiple servers) under an account


# Usage examples

```hcl
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