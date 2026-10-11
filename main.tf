resource "google_apigee_dns_zone" "apigee_dns_zones" {
  for_each = var.apigee_dns_zones

  description     = each.value.description
  dns_zone_id     = each.value.dns_zone_id
  domain          = each.value.domain
  org_id          = each.value.org_id
  deletion_policy = each.value.deletion_policy

  peering_config {
    target_network_id = each.value.peering_config.target_network_id
    target_project_id = each.value.peering_config.target_project_id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

