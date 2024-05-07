# Imperva quickstart-site example

Configuration in this directory creates a site under an account, assign it with allowlist policy and adds to it bots configuration, waf security rules and waf
exceptions.
</br><b>This example must be used with Terraform version of 0.14 or newer.</b>

The Allowlist policy grants access from specific IP addresses to the site.
The bots configuration defines a list of the bad bots and a list of the canceled good pods.
The WAF security rules define a list of 3 waf security rules. one for backdoor action, a second for bots access and a third for ddos threshold.
The WAF exceptions define a list of 3 waf exceptions. one for backdoor action making an exception for an ip from specific urls, a second for bots access making
an exception for an ip from specific urls and a third for ddos threshold making an exception for an ip.

# Usage

To run this example you need to execute the following terraform commands from the current directory:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.