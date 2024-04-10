variable "site_id" {
  description = "(Required) Numeric identifier of the site to operate on."
  default     = null
}

variable "backdoor_security_rule_exception" {
  type = object({
    client_apps  = optional(string) # (Optional) A comma separated list of client application IDs.
    continents   = optional(string) # (Optional) A comma separated list of continent codes.
    countries    = optional(string) # (Optional) A comma separated list of country codes.
    ips          = optional(string) # (Optional) A comma separated list of IPs or IP ranges, e.g: 192.168.1.1, 192.168.1.1-192.168.1.100 or 192.168.1.1/24
    url_patterns = optional(string)
    # (Optional) A comma separated list of patters that correlate to the list of urls. url_patterns are required if you have urls specified, and patters are applied in the order specified and map literally to the list of urls. Supported values are: contains,equals,prefix,suffix,not_equals,not_contain,not_prefix,not_suffix. Example of how to apply url_patters to the three urls listed above in order: url_patters=\"prefix,equals,prefix\".
    urls         = optional(string)
    # (Optional) A comma separated list of resource paths. For example, /home and /admin/index.html are resource paths, while http://www.example.com/home is not. Each URL should be encoded separately using percent encoding as specified by RFC 3986 (http://tools.ietf.org/html/rfc3986#section-2.1). An empty URL list will remove all URLs. urls=\"/someurl1,/path/to/my/resource/2.html,/some/url/3\"
    user_agents  = optional(string) # (Optional) A comma separated list of encoded user agents.
    parameters   = optional(string) # (Optional) A comma separated list of encoded parameters.
  })
  nullable = true
  default  = {
    client_apps  = null
    continents   = null
    countries    = null
    ips          = null
    url_patterns = null
    urls         = null
    user_agents  = null
    parameters   = null
  }
}

#This is another option of how to define variables within an object, however descriptions are not available.
variable "bot_access_control_security_rule_exception" {
  type = object({
    client_app_types = optional(string)
    ips              = optional(string) # (Optional) A comma separated list of IPs or IP ranges, e.g: 192.168.1.1, 192.168.1.1-192.168.1.100 or 192.168.1.1/24
    url_patterns     = optional(string)
    # (Optional) A comma separated list of patters that correlate to the list of urls. url_patterns are required if you have urls specified, and patters are applied in the order specified and map literally to the list of urls. Supported values are: contains,equals,prefix,suffix,not_equals,not_contain,not_prefix,not_suffix. Example of how to apply url_patters to the three urls listed above in order: url_patters=\"prefix,equals,prefix\".
    urls             = optional(string)
    # (Optional) A comma separated list of resource paths. For example, /home and /admin/index.html are resource paths, while http://www.example.com/home is not. Each URL should be encoded separately using percent encoding as specified by RFC 3986 (http://tools.ietf.org/html/rfc3986#section-2.1). An empty URL list will remove all URLs. urls=\"/someurl1,/path/to/my/resource/2.html,/some/url/3\"
    user_agents      = optional(string) # (Optional) A comma separated list of encoded user agents.
  })
  nullable = true
  default  = {
    client_app_types = null
    ips              = null
    url_patterns     = null
    urls             = null
    user_agents      = null
  }
}

#This is another option of how to define variables within an object, however descriptions are not available.
variable "ddos_security_rule_exception" {
  type = object({
    client_apps  = optional(string) # (Optional) A comma separated list of client application types.
    continents   = optional(string) # (Optional) A comma separated list of continent codes.
    countries    = optional(string) # (Optional) A comma separated list of country codes.
    ips          = optional(string) # (Optional) A comma separated list of IPs or IP ranges, e.g: 192.168.1.1, 192.168.1.1-192.168.1.100 or 192.168.1.1/24
    url_patterns = optional(string)
    # (Optional) A comma separated list of patters that correlate to the list of urls. url_patterns are required if you have urls specified, and patters are applied in the order specified and map literally to the list of urls. Supported values are: contains,equals,prefix,suffix,not_equals,not_contain,not_prefix,not_suffix. Example of how to apply url_patters to the three urls listed above in order: url_patters=\"prefix,equals,prefix\".
    urls         = optional(string)
    # (Optional) A comma separated list of resource paths. For example, /home and /admin/index.html are resource paths, while http://www.example.com/home is not. Each URL should be encoded separately using percent encoding as specified by RFC 3986 (http://tools.ietf.org/html/rfc3986#section-2.1). An empty URL list will remove all URLs. urls=\"/someurl1,/path/to/my/resource/2.html,/some/url/3\"
  })
  nullable = true
  default  = {
    client_apps  = null
    continents   = null
    countries    = null
    ips          = null
    url_patterns = null
    urls         = null
  }
}