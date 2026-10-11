resource "oci_data_safe_target_database_group" "data_safe_target_database_groups" {
  for_each = var.data_safe_target_database_groups

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags

  matching_criteria {
    dynamic "exclude" {
      for_each = each.value.matching_criteria.exclude != null ? [each.value.matching_criteria.exclude] : []
      content {
        target_database_ids = exclude.value.target_database_ids
      }
    }
    include {
      dynamic "compartments" {
        for_each = each.value.matching_criteria.include.compartments != null ? each.value.matching_criteria.include.compartments : []
        content {
          id                 = compartments.value.id
          is_include_subtree = compartments.value.is_include_subtree
        }
      }
      defined_tags        = each.value.matching_criteria.include.defined_tags
      freeform_tags       = each.value.matching_criteria.include.freeform_tags
      freeform_tags_in    = each.value.matching_criteria.include.freeform_tags_in
      system_tags         = each.value.matching_criteria.include.system_tags
      target_database_ids = each.value.matching_criteria.include.target_database_ids
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

