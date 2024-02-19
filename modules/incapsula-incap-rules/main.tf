locals {
  rules = var.rules
}

resource "incapsula_incap_rule" "example-incap-rule" {
  site_id = var.site_id
  for_each = local.rules
  name = each.value.name
  action = each.value.action
  filter = each.value.filter
  enabled = true
}

