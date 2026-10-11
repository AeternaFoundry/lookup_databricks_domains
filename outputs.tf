output "domains_lookup_domains" {
  description = "Map of domains values across all domains_lookup, keyed the same as var.domains_lookup except keys with no domains are omitted"
  value       = { for k, v in data.databricks_domains.domains_lookup : k => v.domains if v.domains != null && length(v.domains) > 0 }
}
output "domains_lookup_page_size" {
  description = "Map of page_size values across all domains_lookup, keyed the same as var.domains_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_domains.domains_lookup : k => v.page_size if v.page_size != null }
}
output "domains_lookup_parent_domain_id" {
  description = "Map of parent_domain_id values across all domains_lookup, keyed the same as var.domains_lookup except keys with no parent_domain_id are omitted"
  value       = { for k, v in data.databricks_domains.domains_lookup : k => v.parent_domain_id if v.parent_domain_id != null && length(v.parent_domain_id) > 0 }
}
output "domains_lookup_provider_config" {
  description = "Map of provider_config values across all domains_lookup, keyed the same as var.domains_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_domains.domains_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

