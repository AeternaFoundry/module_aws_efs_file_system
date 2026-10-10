variable "efs_file_systems" {
  description = <<EOT
Map of efs_file_systems, attributes below
Optional:
    - availability_zone_name
    - creation_token
    - encrypted
    - kms_key_id
    - performance_mode
    - provisioned_throughput_in_mibps
    - region
    - tags
    - tags_all
    - throughput_mode
    - lifecycle_policy (block):
        - transition_to_archive (optional)
        - transition_to_ia (optional)
        - transition_to_primary_storage_class (optional)
    - protection (block):
        - replication_overwrite (optional)
EOT

  type = map(object({
    availability_zone_name          = optional(string)
    creation_token                  = optional(string)
    encrypted                       = optional(bool)
    kms_key_id                      = optional(string)
    performance_mode                = optional(string)
    provisioned_throughput_in_mibps = optional(number)
    region                          = optional(string)
    tags                            = optional(map(string))
    tags_all                        = optional(map(string))
    throughput_mode                 = optional(string)
    lifecycle_policy = optional(list(object({
      transition_to_archive               = optional(string)
      transition_to_ia                    = optional(string)
      transition_to_primary_storage_class = optional(string)
    })))
    protection = optional(object({
      replication_overwrite = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.efs_file_systems : (
        v.lifecycle_policy == null || (length(v.lifecycle_policy) <= 3)
      )
    ])
    error_message = "Each lifecycle_policy list must contain at most 3 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.efs_file_systems : (
        v.availability_zone_name == null || (length(v.availability_zone_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.efs_file_systems : (
        v.creation_token == null || (length(v.creation_token) >= 0 && length(v.creation_token) <= 64)
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

