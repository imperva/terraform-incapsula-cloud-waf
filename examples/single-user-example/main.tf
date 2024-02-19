data "incapsula_account_data" "account_data" {
}

data "incapsula_account_roles" "roles" {
  account_id = data.incapsula_account_data.account_data.current_account
}

module "single_user" {
  source = "../../modules/single-user"

  account_id = data.incapsula_account_data.account_data.id
  user = {
    first_name = "single"
    last_name  = "user"
    email      = "terraform-example@test.com"
    role_ids   = [data.incapsula_account_roles.roles.reader_role_id]
  }
}