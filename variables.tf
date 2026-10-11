variable "data_safe_target_database_groups" {
  description = <<EOT
Map of data_safe_target_database_groups, attributes below
Required:
    - compartment_id
    - display_name
    - matching_criteria (block):
        - exclude (optional, block):
            - target_database_ids (required)
        - include (required, block):
            - compartments (optional, block):
                - id (required)
                - is_include_subtree (optional)
            - defined_tags (optional)
            - freeform_tags (optional)
            - freeform_tags_in (optional)
            - system_tags (optional)
            - target_database_ids (optional)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    matching_criteria = object({
      exclude = optional(object({
        target_database_ids = list(string)
      }))
      include = object({
        compartments = optional(list(object({
          id                 = string
          is_include_subtree = optional(bool)
        })))
        defined_tags        = optional(map(string))
        freeform_tags       = optional(map(string))
        freeform_tags_in    = optional(map(any))
        system_tags         = optional(map(any))
        target_database_ids = optional(list(string))
      })
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

