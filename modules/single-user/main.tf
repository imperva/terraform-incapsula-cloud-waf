resource "incapsula_account_user" "user" {
  account_id = var.account_id
  email = var.user.email
  first_name = var.user.first_name
  last_name = var.user.last_name
  role_ids = var.user.role_ids
}
