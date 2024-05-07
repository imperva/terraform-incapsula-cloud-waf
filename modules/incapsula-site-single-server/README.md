# Imperva incapsula-site-single-server description

Configuration in this module a single server site under an account
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>


# Usage examples

```hcl
module "my_site_single_server" {
  source      = "../../modules/incapsula-site-single-server"
  domain      = "my-site1.mydomain.co"
  data_center = {
    name          = "my-data-center"
    origin_server = {
      address = "1.1.1.1"
    }
  }
}
```