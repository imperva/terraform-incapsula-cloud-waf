locals {
    sites = var.sites_ids
}


resource "incapsula_policy" "example-embargo-nation-block-policy" {
  description     = "Block embargoed countries from accessing sites."
  enabled         = true
  name            = var.embargo_nation_block_policy_name
  policy_settings = jsonencode(
    [
      {
        data = {
          geo = {
            countries = [
              "CU",
              "IR",
              "KR",
              "SD",
              "SY",
              "RU"
            ]
          }
        }
        policySettingType = "GEO"
        settingsAction    = "BLOCK"
      },
    ]
  )
  policy_type = "ACL"
}

resource "incapsula_policy_asset_association" "policy-asset-association" {
  policy_id  = incapsula_policy.example-embargo-nation-block-policy.id
  for_each   = local.sites
  asset_id   = each.value
  asset_type = "WEBSITE"
}