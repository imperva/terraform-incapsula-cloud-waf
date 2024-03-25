locals {


  reformat_ips = var.ips == null ? null : {
    data = {
      ips = var.ips
    }
    policySettingType = "IP"
    settingsAction    = "ALLOW"
  }

  policy_settings   = [local.reformat_ips]
  reformat_settings = [for setting in local.policy_settings : setting if setting != null]


}

resource "incapsula_policy" "example-dynamic-allowlist-block-policy" {
  description     = var.description
  enabled         = true
  name            = var.dynamic_allowlist_policy_name
  policy_settings = jsonencode(local.reformat_settings)
  policy_type     = "WHITELIST"
}


resource "incapsula_policy_asset_association" "policy-asset-association" {
  policy_id  = incapsula_policy.example-dynamic-allowlist-block-policy.id
  for_each   = var.sites_ids
  asset_id   = each.value
  asset_type = "WEBSITE"
}


