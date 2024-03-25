locals {

  bad_bots = var.bad_bots == null ? null : [
    for bot in var.bad_bots :
    data.incapsula_client_apps_data.client_apps_bots.map[bot]
  ]

  canceled_good_bots = var.canceled_good_bots == null ? null : [
    for bot in var.canceled_good_bots :
    data.incapsula_client_apps_data.client_apps_bots.map[bot]
  ]

}


data "incapsula_client_apps_data" "client_apps_bots" {
}


resource "incapsula_bots_configuration" "basic-bots-configuration" {
  site_id            = var.site_id
  canceled_good_bots = local.canceled_good_bots
  bad_bots           = local.bad_bots
}
