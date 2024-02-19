resource "incapsula_data_centers_configuration" "example-basic-data-centers-configuration" {
  site_id                         = incapsula_site.default.id
  site_topology                   = "SINGLE_DC"
  site_lb_algorithm               = "BEST_CONNECTION_TIME"
  fail_over_required_monitors     = var.fail_over_required_monitors
  min_available_servers_for_dc_up = var.min_available_servers_for_dc_up
  kickstart_url                   = var.kickstart_url
  kickstart_user                  = var.kickstart_user
  kickstart_password              = var.kickstart_password
  is_persistent                   = var.is_persistent



  data_center {
    name                   = var.data_center.name
    ip_mode                = "MULTIPLE_IP"
    web_servers_per_server = 1
    dc_lb_algorithm        = "LB_LEAST_PENDING_REQUESTS"
    is_enabled             = var.data_center.is_enabled
    is_active              = var.data_center.is_active
    is_content             = var.data_center.is_content
    origin_pop             = var.data_center.origin_pop


    dynamic "origin_server" {
      for_each = var.data_center.origin_servers
      content {
        address    = origin_server.value.address
        is_enabled = origin_server.value.is_enabled
        is_active  = origin_server.value.is_active
      }
    }
  }
}


resource "incapsula_site" "default" {
domain = var.domain
site_ip = var.site_ip
account_id = var.account_id
data_storage_region = var.data_storage_region
force_ssl = var.force_ssl
hash_salt = var.hash_salt
hashing_enabled = var.hashing_enabled
ignore_ssl = var.ignore_ssl
log_level = var.log_level
domain_redirect_to_full = var.domain_redirect_to_full
perf_client_comply_no_cache = var.perf_client_comply_no_cache
perf_client_enable_client_side_caching = var.perf_client_enable_client_side_caching
perf_client_send_age_header = var.perf_client_send_age_header
perf_key_comply_vary = var.perf_key_comply_vary
perf_key_unite_naked_full_cache = var.perf_key_unite_naked_full_cache
perf_mode_https = var.perf_mode_https
perf_mode_level = var.perf_mode_level
perf_mode_time = var.perf_mode_time
perf_response_cache_300x = var.perf_response_cache_300x
perf_response_cache_404_enabled = var.perf_response_cache_404_enabled
perf_response_cache_404_time = var.perf_response_cache_404_time
perf_response_cache_empty_responses = var.perf_response_cache_empty_responses
perf_response_cache_http_10_responses = var.perf_response_cache_http_10_responses
perf_response_cache_response_header_mode = var.perf_response_cache_response_header_mode
perf_response_cache_response_headers = var.perf_response_cache_response_headers
perf_response_cache_shield = var.perf_response_cache_shield
perf_response_stale_content_mode = var.perf_response_stale_content_mode
perf_response_stale_content_time = var.perf_response_stale_content_time
perf_response_tag_response_header = var.perf_response_tag_response_header
perf_ttl_prefer_last_modified = var.perf_ttl_prefer_last_modified
perf_ttl_use_shortest_caching = var.perf_ttl_use_shortest_caching
acceleration_level = var.acceleration_level
active = var.active
approver = var.approver
domain_validation = var.domain_validation
remove_ssl = var.remove_ssl
send_site_setup_emails = var.send_site_setup_emails
wildcard_san = var.wildcard_san
}