resource "oci_cloud_bridge_agent_plugin" "cloud_bridge_agent_plugins" {
  for_each = var.cloud_bridge_agent_plugins

  agent_id      = each.value.agent_id
  plugin_name   = each.value.plugin_name
  desired_state = each.value.desired_state

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

