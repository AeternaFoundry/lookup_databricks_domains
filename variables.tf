variable "domains_lookup" {
  description = <<EOT
Map of domains_lookup, attributes below
Optional:
    - page_size
    - parent_domain_id
    - provider_config
EOT

  type = map(object({
    page_size        = optional(number)
    parent_domain_id = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

