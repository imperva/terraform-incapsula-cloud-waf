variable "domain" {
  description = "(Required) The fully qualified domain name of the site. For example: www.example.com, hello.example.com."
  type        = string
  nullable    = false
}

variable "account_id" {
  description = "(Optional) The account to operate on. If not specified, operation will be performed on the account identified by the authentication parameters."
  type        = number
  nullable    = true
  default     = null
}

variable "send_site_setup_emails" {
  description = "(Optional) If this value is false, end users will not get emails about the add site process such as DNS instructions and SSL setup"
  type        = string
  nullable    = true
  default     = null
}

variable "site_ip" {
  description = "(Optional) The web server IP/CNAME. This field should be specified when creating a site and the domain does not yet exist or the domain already points to Imperva Cloud. When specified, its value will be used for adding site only. After site is already created this field will be ignored. To modify site ip, please use resource incapsula_data_centers_configuration instead."
  type        = string
  nullable    = true
  default     = null
}

variable "force_ssl" {
  description = "(Optional) Force SSL. This option is only available for sites with manually configured IP/CNAME and for specific accounts."
  type        = string
  nullable    = true
  default     = null
}

variable "active" {
  description = "(Optional) Whether the site is active or bypassed by the Imperva network. Options are active and bypass."
  type        = string
  nullable    = true
  default     = null
}

variable "domain_validation" {
  description = "(Optional) Sets the domain validation method that will be used to generate an SSL certificate. Options are email, html, cname and dns."
  type        = string
  nullable    = true
  default     = "cname"
}

variable "approver" {
  description = "(Optional) Sets the approver e-mail address that will be used to perform SSL domain validation."
  type        = string
  nullable    = true
  default     = null
}

variable "ignore_ssl" {
  description = "(Optional) Sets the ignore SSL flag (if the site is in pending-select-approver state). Pass \"true\" or empty string in the value parameter."
  nullable    = true
  default     = null
}

variable "acceleration_level" {
  description = "(Optional) Sets the acceleration level of the site. Options are none, standard, and aggressive."
  type        = string
  nullable    = true
  default     = null
}

variable "seal_location" {
  description = "(Optional) Sets the seal location. Options are api.seal_location.none, api.seal_location.bottom_left, api.seal_location.right_bottom, api.seal_location.left, and api.seal_location.right."
  type        = string
  nullable    = true
  default     = null
}

variable "domain_redirect_to_full" {
  description = "(Optional) Sets the redirect naked to full flag. Pass \"true\" or empty string in the value parameter."
  type        = string
  nullable    = true
  default     = null
}

variable "remove_ssl" {
  description = "(Optional) Sets the remove SSL from site flag. Pass \"true\" or empty string in the value parameter."
  type        = string
  nullable    = true
  default     = null
}

variable "data_storage_region" {
  description = "(Optional) The data region to use. Options are APAC, AU, EU, and US."
  type        = string
  nullable    = true
  default     = null
}

variable "hashing_enabled" {
  description = "(Optional) Specify if hashing (masking setting) should be enabled."
  type        = bool
  nullable    = true
  default     = null
}

variable "hash_salt" {
  description = "(Optional) Specify the hash salt (masking setting), required if hashing is enabled. Maximum length of 64 characters."
  type        = string
  nullable    = true
  default     = null
}

variable "log_level" {
  description = "(Optional) The log level. Options are full, security, and none."
  type        = string
  nullable    = true
  default     = null
}

variable "naked_domain_san" {
  description = "(Optional) Use true to add the naked domain SAN to a www site’s SSL certificate. Default value: true"
  type        = bool
  nullable    = true
  default     = null
}

variable "wildcard_san" {
  description = "(Optional) Use true to add the wildcard SAN or false to add the full domain SAN to the site’s SSL certificate. Default value: true"
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_client_comply_no_cache" {
  description = "(Optional) Comply with No-Cache and Max-Age directives in client requests. By default, these cache directives are ignored. Resources are dynamically profiled and re-configured to optimize performance."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_client_enable_client_side_caching" {
  description = "(Optional) Cache content on client browsers or applications. When not enabled, content is cached only on the Imperva proxies."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_client_send_age_header" {
  description = "(Optional) Send Cache-Control: max-age and Age headers."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_key_comply_vary" {
  description = "(Optional) Comply with Vary. Cache resources in accordance with the Vary response header."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_key_unite_naked_full_cache" {
  description = "(Optional) Use the Same Cache for Full and Naked Domains. For example, use the same cached resource for www.example.com/a and example.com/a."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_mode_https" {
  description = "(Optional) The resources that are cached over HTTPS, the general level applies. Options are disabled, dont_include_html, include_html, and include_all_resources."
  type        = string
  nullable    = true
  default     = null // "include_all_resources"
}

variable "perf_mode_level" {
  description = "(Optional) Caching level. Options are disabled, standard, smart, and all_resources."
  type        = string
  nullable    = true
  default     = null // "standard"
}

variable "perf_mode_time" {
  description = "(Optional) The time, in seconds, that you set for this option determines how often the cache is refreshed. Relevant for the include_html and include_all_resources levels only."
  type        = number
  nullable    = true
  default     = null // 1000
}

variable "perf_response_cache_300x" {
  description = "(Optional) When this option is checked Imperva will cache 301, 302, 303, 307, and 308 redirect response headers containing the target URI."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_response_cache_404_enabled" {
  description = "(Optional) Whether or not to cache 404 responses."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_response_cache_404_time" {
  description = "(Optional) The time in seconds to cache 404 responses. Value should be divisible by 60."
  type        = number
  nullable    = true
  default     = null // 60
}

variable "perf_response_cache_empty_responses" {
  description = "(Optional) Cache responses that don’t have a message body."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_response_cache_http_10_responses" {
  description = "(Optional) Cache HTTP 1.0 type responses that don’t include the Content-Length header or chunking."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_response_cache_response_header_mode" {
  description = "(Optional) The working mode for caching response headers. Options are all and custom."
  type        = string
  nullable    = true
  default     = null // "disabled"
}

variable "perf_response_cache_response_headers" {
  description = "(Optional) An array of strings representing the response headers to be cached when working in custom mode. If empty, no response headers are cached. For example: [\"Access-Control-Allow-Origin\",\"Access-Control-Allow-Methods\"]."
  type        = list(string)
  nullable    = true
  default     = null // []
}

variable "perf_response_cache_shield" {
  description = "(Optional) Adds an intermediate cache between other Imperva PoPs and your origin servers to protect your servers from redundant requests."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_response_stale_content_mode" {
  description = "(Optional) The working mode for serving stale content. Options are disabled, adaptive, and custom."
  type        = string
  nullable    = true
  default     = null // "custom"
}

variable "perf_response_stale_content_time" {
  description = "(Optional) The time, in seconds, to serve stale content for when working in custom work mode."
  type        = number
  nullable    = true
  default     = null // 0
}

variable "perf_response_tag_response_header" {
  description = "(Optional) Tag the response according to the value of this header. Specify which origin response header contains the cache tags in your resources. Example: \"Example-Tag-Value-Header\""
  type        = string
  nullable    = true
  default     = null
}

variable "perf_ttl_prefer_last_modified" {
  description = "(Optional) Prefer 'Last Modified' over eTag. When this option is checked, Imperva prefers using Last Modified values (if available) over eTag values (recommended on multi-server setups)."
  type        = bool
  nullable    = true
  default     = null
}

variable "perf_ttl_use_shortest_caching" {
  description = "(Optional) Use shortest caching duration in case of conflicts. By default, the longest duration is used in case of conflict between caching rules or modes. When this option is checked, Imperva uses the shortest duration in case of conflict."
  type        = bool
  nullable    = true
  default     = null
}
#incapsula_data_centers_configuration

variable "fail_over_required_monitors" {
  description = "(Optional) How many Imperva PoPs should assess Data Center as down before failover is performed. One of: ONE, MANY, MOST, ALL."
  type        = string
  nullable    = true
  default     = null
}

variable "min_available_servers_for_dc_up" {
  description = "(Optional) The minimal number of available data center's servers to consider that data center as UP. Default: 1."
  type        = string
  nullable    = true
  default     = null
}

variable "kickstart_url" {
  description = "(Optional) The URL that will be sent to the standby server when Imperva performs failover based on our monitoring. E.g. \"https://www.example.com/kickStart\"."
  type        = string
  nullable    = true
  default     = null
}

variable "kickstart_user" {
  description = "(Optional) User name, if required by the kickstart URL."
  type        = string
  nullable    = true
  default     = null
}

variable "kickstart_password" {
  description = "(Optional) Password, if required by the kickstart URL."
  type        = string
  nullable    = true
  default     = null
}

variable "is_persistent" {
  description = "(Optional) Use shortest caching duration in case of conflicts. By default, the longest duration is used in case of conflict between caching rules or modes. When this option is checked, Imperva uses the shortest duration in case of conflict."
  type        = bool
  nullable    = true
  default     = null
}

variable "data_centers" {
  description = "(Required) each site must have at least one data center."
  type        = map(object({
    name           = string,
    is_enabled     = optional(bool)
    is_active      = optional(bool)
    is_content     = optional(bool)
    origin_pop     = optional(string)
    origin_servers = map(object({
      address    = string,
      is_enabled = optional(bool),
      is_active  = optional(bool)
    }))
  }))
  nullable = false
}