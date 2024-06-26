# Imperva incapsula-rules description

Configuration in this module creates multiple rules and applies to the provided site.
</br><b>This module must be used with Terraform version of 0.14 or newer.</b>


# Usage example 

```hcl
##INFO: The following rules module creates 5 rules and applies them to the created site
module "my_site_single_server_rules" {
  source  = "../../modules/incapsula-rules"
  site_id = module.my_site_single_server.site_id
  rules   = {
    rule1 = {
      name   = "Block IP with ASN filter"
      action = "RULE_ACTION_BLOCK_IP"
      filter = "ASN == 4"
    },
    rule2 = {
      name   = "Block session with URL and IP filter"
      action = "RULE_ACTION_BLOCK_USER"
      filter = "Full-URL == \"/admin\" & ClientIP != 2.2.2.2"
    },
    rule3 = {
      name   = "Alert on access to admin"
      action = "RULE_ACTION_ALERT"
      filter = "Full-URL == \"/admin\""
    },
    rule4 = {
      name   = "Rewrite homepage to home when header does not exist"
      filter = "HeaderExists != \"mybot\""
      action = "RULE_ACTION_REWRITE_URL"
      from   = "/homepage"
      to     = "/home"
    },
    rule5 = {
      name          = "Redirect url1 to url2 when header bot exists and response code 302"
      action        = "RULE_ACTION_REDIRECT"
      filter        = "HeaderValue == {\"bot\";\"mybot\"}"
      response_code = "302"
      from          = "https://my-site1.mydomain.co/url1"
      to            = "https://my-site1.mydomain.co/url2"
    }
  }
```