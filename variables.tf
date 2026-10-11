variable "apigee_dns_zones" {
  description = <<EOT
Map of apigee_dns_zones, attributes below
Required:
    - description
    - dns_zone_id
    - domain
    - org_id
    - peering_config (block):
        - target_network_id (required)
        - target_project_id (required)
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    description     = string
    dns_zone_id     = string
    domain          = string
    org_id          = string
    deletion_policy = optional(string)
    peering_config = object({
      target_network_id = string
      target_project_id = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

