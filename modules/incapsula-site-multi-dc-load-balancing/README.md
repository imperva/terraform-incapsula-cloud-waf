# Imperva incapsula-site-multi-dc-load-balancing description

Configuration in this module creates a multi data center site with load balancing under an account


# Usage examples

```hcl
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