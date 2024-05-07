
# Imperva incapsula-site-quickstart description

Configuration in this module creates a site under an account
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>


# Usage examples

```hcl
module "my_quickstart_site" {
  source = "../../modules/incapsula-site-quickstart"
  domain = "my-site1.mydomain.co"
}
```