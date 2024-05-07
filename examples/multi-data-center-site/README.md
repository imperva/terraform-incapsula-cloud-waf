# Imperva multi-data-center-site example

Configuration in this directory creates a multi data center site with load balancing under an account and assign it with several ACL policies.
</br><b>This example must be used with Terraform version of 0.14 or newer.</b>

The multi data center site is constructed out of 2 datacenters, each datacenter has a server group with 1 server.
The site is assigned with 3 ACL policies. One ACL policy blocks embargo countries, the second blocks specific ips while the third blocks specific urls coming
from specific countries.

# Usage

To run this example you need to execute the following terraform commands from the current directory:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.