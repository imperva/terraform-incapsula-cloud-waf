# Imperva incapsula-bots-configuration description

Configuration in this module creates a bots configuration under an account.
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>

See https://docs.imperva.com/bundle/cloud-application-security/page/settings/client-classification.htm for bots list names

# Usage example 

```hcl
module "my_site_bots-configuration" {
  source             = "../../modules/incapsula-bots-configuration"
  site_id            = module.my_quickstart_site.site_id
  canceled_good_bots = ["Googlebot", "SiteUptime"]
  bad_bots           = ["Firefox", "Yandex Bot", "Swish-e"]
}
```