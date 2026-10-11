data "databricks_domains" "domains_lookup" {
  for_each = var.domains_lookup

  page_size        = each.value.page_size
  parent_domain_id = each.value.parent_domain_id
  provider_config  = each.value.provider_config
}

