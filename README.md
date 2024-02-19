# Terraform Imperva Template Module


This repository serves as a abstraction and simplification for common uses of the Imperva Cloud WAF terraform resources. 


## Usage

Here is an example illustrating an onboarding a single data center site with load balancing:
  

```hcl
module "my_site_single_data_center" {
  source      = "./incapsula-site-single-dc-load-balancing"
  domain      = "my-site.incaptest.co"
  data_center = {
    name           = "my-data-center"
    origin_servers = {
      os1 = {
        address = "1.1.1.1"
      },
      os2 = {
        address = "2.2.2.2"
      }
    }
  }
}
```

## Examples

The examples directory contains a "get started" examples, demonstrating how to use the module or its sub-modules

Here you can find a few examples on how to use this module (and sub-modules):

- [Create a single server site with incap rules](examples/single-server-site)
- [Create a single data center site with load balancing and WAF policy](examples/single-data-center-load-blancing-site)
- [Create a multi data center site and ACL policies](examples/multi-data-center-site)


## Resources

[Optional] A list of resources this module provides.

| Name | Type |
|------|------|
| [incapsula_site](https://registry.terraform.io/providers/imperva/incapsula/latest/docs/resources/site) | resource |
| [incapsula_data_centers_configuration](https://registry.terraform.io/providers/imperva/incapsula/latest/docs/resources/data_centers_configuration) | resource |
| [incapsula_policy](https://registry.terraform.io/providers/imperva/incapsula/latest/docs/resources/policy) | resource |
| [incapsula_policy_asset_association](https://registry.terraform.io/providers/imperva/incapsula/latest/docs/resources/policy_asset_association) | resource |
| [incapsula_incap_rule](https://registry.terraform.io/providers/imperva/incapsula/latest/docs/resources/incap_rule) | resource |

## Authors

Module is maintained by the team at Imperva

## License

Mozilla Public License 2.0
