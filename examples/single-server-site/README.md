# Imperva single-server-site example

Configuration in this directory creates a single server site under an account and assign it with incap rules.
The single server site is constructed out of a datacenter with single server.
The site is applied with 5 incap rules.
The first rule blocks IP with ASN filter
The second rule block session with URL and IP filter
The third rule alert on access to /admin url
The forth rule rewrite /homepage to /home
The fifth rule eedirect /url1 to /url2 and return response code 302

# Usage

To run this example you need to execute the following terraform commands from the current directory:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.