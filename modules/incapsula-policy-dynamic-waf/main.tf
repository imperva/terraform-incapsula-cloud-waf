resource "incapsula_policy" "example-dynamic-waf-block-policy" {
  description     = var.description
  enabled         = true
  name            = var.dynamic_waf_policy_name
  policy_settings = jsonencode(
    [
      {
        policySettingType = "REMOTE_FILE_INCLUSION"
        settingsAction    = var.remote_file_inclusion_action
      },
      {
        policySettingType = "ILLEGAL_RESOURCE_ACCESS"
        settingsAction    = var.illegal_resource_access_action
      },
      {
        policySettingType = "CROSS_SITE_SCRIPTING"
        settingsAction    = var.cross_site_scripting_action
      },
      {
        policySettingType = "SQL_INJECTION"
        settingsAction    = var.sql_injection_action
      },

    ]
  )
  policy_type = "WAF_RULES"
}


resource "incapsula_policy_asset_association" "policy-asset-association" {
  policy_id  = incapsula_policy.example-dynamic-waf-block-policy.id
  for_each   = var.sites_ids
  asset_id   = each.value
  asset_type = "WEBSITE"
}


