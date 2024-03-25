provider "incapsula" {
  api_id  = var.api_id # shell environment variable - TF_VAR_api_id
  api_key = var.api_key # shell environment variable - TF_VAR_api_key
}

##INFO: Example to creating a site with single server and data center using the incapsula-site-single-server module
module "my_quickstart_site" {
  source = "../../modules/incapsula-site-quickstart"
  domain = "my-site1.mydomain.co"
}

##INFO: The following policies module creates an Allowlist policy with custom ip allow configuration at the account level and assign it to the created site
module "policy-dynamic-allowlist-ips" {
  source                        = "../../modules/incapsula-policy-dynamic-allowlist"
  dynamic_allowlist_policy_name = "My Allowlist block IP policy"
  sites_ids                     = { site1 = module.my_quickstart_site.site_id }
  ips                           = ["1.2.3.6", "1.2.3.7"]
}

##INFO: The following bots configuration module adds the specified good and bad bots to the site.
module "my_site_bots-configuration" {
  source             = "../../modules/incapsula-bots-configuration"
  site_id            = module.my_quickstart_site.site_id
  canceled_good_bots = ["Googlebot", "SiteUptime"]
  bad_bots           = ["Firefox", "Yandex Bot", "Swish-e"]
}

##INFO: The following was security rule module adds the specified security rules to the site.
module "waf-security-rule" {
  source                        = "../../modules/incapsula-waf-security-rule"
  site_id                       = module.my_quickstart_site.site_id
  backdoor_security_rule_action = "api.threats.action.alert"
  block_bad_bots                = true
  challenge_suspected_bots      = "true"
  ddos_activation_mode          = "api.threats.ddos.activation_mode.on"
  ddos_traffic_threshold        = 3000
}


##INFO: The following incapsula-security-rule-exception can only have 1 unique set (backdoor, bot access control, ddos) per site.
module "security-rule-exceptions" {
  source  = "../../modules/incapsula-security-rule-exception"
  site_id = module.my_quickstart_site.site_id

  backdoor_security_rule_exception = {
    continents   = "NA"
    countries    = "US"
    ips          = "3.3.4.4"
    url_patterns = "EQUALS,EQUALS,EQUALS"
    urls         = "/myurl1.html,/index.html,/myurl.html"
  }

  bot_access_control_security_rule_exception = {
    ips          = "5.5.6.6"
    url_patterns = "EQUALS,EQUALS,EQUALS"
    urls         = "/myurl1.html,/index.html,/myurl.html"
  }

  ddos_security_rule_exception = {
    ips = "7.7.8.8"
  }
}