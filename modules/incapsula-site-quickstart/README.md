
# Imperva incapsula-site-quickstart description

Configuration in this module creates a site under an account


# Usage examples

```hcl
module "my_quickstart_site" {
  source = "../../modules/incapsula-site-quickstart"
  domain = "my-site1.mydomain.co"
}