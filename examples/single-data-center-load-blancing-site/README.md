# Imperva single-data-center-load-balancing-site example

Configuration in this directory creates a single data center site with load balancing under an account and assign it with WAF policy.
</br><b>This example must be used with Terraform version of 0.14 or newer.</b>

The single data center site is constructed out of a datacenter containing two servers.
The site is assigned with a WAF policy, which defines Alert for remote file inclusion attack and uses default for all other settings. 

# Usage

To run this example you need to execute the following terraform commands from the current directory:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.