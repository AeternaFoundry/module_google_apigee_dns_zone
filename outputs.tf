output "apigee_dns_zones_id" {
  description = "Map of id values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no id are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_dns_zones_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_dns_zones_description" {
  description = "Map of description values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no description are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigee_dns_zones_dns_zone_id" {
  description = "Map of dns_zone_id values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no dns_zone_id are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => v.dns_zone_id if v.dns_zone_id != null && length(v.dns_zone_id) > 0 }
}
output "apigee_dns_zones_domain" {
  description = "Map of domain values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no domain are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "apigee_dns_zones_name" {
  description = "Map of name values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no name are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigee_dns_zones_org_id" {
  description = "Map of org_id values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_dns_zones_peering_config" {
  description = "Map of peering_config values across all apigee_dns_zones, keyed the same as var.apigee_dns_zones except keys with no peering_config are omitted"
  value       = { for k, v in google_apigee_dns_zone.apigee_dns_zones : k => one(v.peering_config) if v.peering_config != null && length(v.peering_config) > 0 }
}

