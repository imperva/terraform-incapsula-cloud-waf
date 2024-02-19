locals {

  reformat_geo = var.countries == null ? null : {
    data = {
      geo = {
        countries = var.countries
      }
    }
    policySettingType = "GEO"
    settingsAction    = "BLOCK"
  }

  reformat_ips = var.ips == null ? null : {
    data = {
      ips = var.ips
    }
    policySettingType = "IP"
    settingsAction    = "BLOCK"
  }


  reformat_urls = var.urls == null ? null : {
    data = {
      "urls" : [
        for k, v in var.urls : {
          url     = k
          pattern = v
        }
      ]
    }
    policySettingType = "URL"
    settingsAction    = "BLOCK"
  }

  policy_settings   = [local.reformat_geo, local.reformat_ips, local.reformat_urls]
  reformat_settings = [for setting in local.policy_settings : setting if setting != null]


}

resource "incapsula_policy" "example-dynamic-acl-block-policy" {
  description     = var.description
  enabled         = true
  name            = var.dynamic_acl_policy_name
  policy_settings = jsonencode(local.reformat_settings)
  policy_type     = "ACL"
}


resource "incapsula_policy_asset_association" "policy-asset-association" {
  policy_id  = incapsula_policy.example-dynamic-acl-block-policy.id
  for_each   = var.sites_ids
  asset_id   = each.value
  asset_type = "WEBSITE"
}


