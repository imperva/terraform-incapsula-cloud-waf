# Terraform Imperva Template Module


This repository serves as a template for kickstarting the development of new Imperva Terraform modules. It provides a structured directory layout and sample files to help maintain consistency across projects.

**Note:** This README is also a template for module documentation. Customize the content to match your module.


## Usage

Here is an example illustrating the basic usage of the module:
  

```hcl
module "imperva_single_user" {
  source = "imperva/terraform-imperva-template-module"

  account_id = data.incapsula_account_data.account_data.id
  user       = {
    first_name = "single"
    last_name  = "user"
    email      = "terraform-example@test.com"
    role_ids   = [data.incapsula_account_roles.roles.reader_role_id]
  }
}
```

## Examples

[Optional] The examples directory contains a "get started" example, demonstrating how to use the module or its sub-modules

Here is a template of example documentation:

Here you can find a few examples on how to use this module (and sub-modules):

- [Create a single user under account](Link to the rhigt example directory)


## Resources

[Optional] A list of resources this module provides.

| Name | Type |
|------|------|
| [incapsula_account_user](https://registry.terraform.io/providers/imperva/incapsula/latest/docs/resources/account_user) | resource |

## Authors

Module is maintained by the team at Imperva

## License

Mozilla Public License 2.0
