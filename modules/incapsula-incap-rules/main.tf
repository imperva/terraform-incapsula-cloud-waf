locals {
  rules = var.rules
}

resource "incapsula_incap_rule" "example-incap-rule" {
  site_id          = var.site_id
  for_each         = local.rules
  name             = each.value.name
  action           = each.value.action
  filter           = each.value.filter
  dc_id            = each.value.dc_id
  response_code    = each.value.response_code
  from             = each.value.from
  to               = each.value.to
  add_missing      = each.value.add_missing
  rewrite_existing = each.value.rewrite_existing
  rewrite_name     = each.value.rewrite_name
  enabled          = true
}

