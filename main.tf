##For the Imperva Provider, the API ID and API Key are required.

provider "incapsula" {
  api_id = var.api_id # shell environment variable - TF_VAR_api_id
  api_key = var.api_key # shell environment variable - TF_VAR_api_key
}

resource "incapsula_account_user" "user" {
  account_id = var.account_id
  email = var.user.email
  first_name = var.user.first_name
  last_name = var.user.last_name
  role_ids = var.user.role_ids
}
