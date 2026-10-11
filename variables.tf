variable "cloud_bridge_agent_plugins" {
  description = <<EOT
Map of cloud_bridge_agent_plugins, attributes below
Required:
    - agent_id
    - plugin_name
Optional:
    - desired_state
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    agent_id      = string
    plugin_name   = string
    desired_state = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

