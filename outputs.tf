output "data_safe_target_database_groups_id" {
  description = "Map of id values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_target_database_groups_compartment_id" {
  description = "Map of compartment_id values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no compartment_id are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "data_safe_target_database_groups_defined_tags" {
  description = "Map of defined_tags values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no defined_tags are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "data_safe_target_database_groups_description" {
  description = "Map of description values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no description are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_safe_target_database_groups_display_name" {
  description = "Map of display_name values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no display_name are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "data_safe_target_database_groups_freeform_tags" {
  description = "Map of freeform_tags values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "data_safe_target_database_groups_lifecycle_details" {
  description = "Map of lifecycle_details values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "data_safe_target_database_groups_matching_criteria" {
  description = "Map of matching_criteria values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no matching_criteria are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => one(v.matching_criteria) if v.matching_criteria != null && length(v.matching_criteria) > 0 }
}
output "data_safe_target_database_groups_membership_count" {
  description = "Map of membership_count values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no membership_count are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.membership_count if v.membership_count != null }
}
output "data_safe_target_database_groups_membership_update_time" {
  description = "Map of membership_update_time values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no membership_update_time are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.membership_update_time if v.membership_update_time != null && length(v.membership_update_time) > 0 }
}
output "data_safe_target_database_groups_state" {
  description = "Map of state values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no state are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.state if v.state != null && length(v.state) > 0 }
}
output "data_safe_target_database_groups_system_tags" {
  description = "Map of system_tags values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no system_tags are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "data_safe_target_database_groups_time_created" {
  description = "Map of time_created values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no time_created are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "data_safe_target_database_groups_time_updated" {
  description = "Map of time_updated values across all data_safe_target_database_groups, keyed the same as var.data_safe_target_database_groups except keys with no time_updated are omitted"
  value       = { for k, v in oci_data_safe_target_database_group.data_safe_target_database_groups : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

