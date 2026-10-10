output "efs_file_systems_id" {
  description = "Map of id values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.id if v.id != null && length(v.id) > 0 }
}
output "efs_file_systems_arn" {
  description = "Map of arn values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "efs_file_systems_availability_zone_id" {
  description = "Map of availability_zone_id values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.availability_zone_id if v.availability_zone_id != null && length(v.availability_zone_id) > 0 }
}
output "efs_file_systems_availability_zone_name" {
  description = "Map of availability_zone_name values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.availability_zone_name if v.availability_zone_name != null && length(v.availability_zone_name) > 0 }
}
output "efs_file_systems_creation_token" {
  description = "Map of creation_token values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.creation_token if v.creation_token != null && length(v.creation_token) > 0 }
}
output "efs_file_systems_dns_name" {
  description = "Map of dns_name values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "efs_file_systems_encrypted" {
  description = "Map of encrypted values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.encrypted if v.encrypted != null }
}
output "efs_file_systems_kms_key_id" {
  description = "Map of kms_key_id values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "efs_file_systems_lifecycle_policy" {
  description = "Map of lifecycle_policy values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.lifecycle_policy if v.lifecycle_policy != null && length(v.lifecycle_policy) > 0 }
}
output "efs_file_systems_name" {
  description = "Map of name values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.name if v.name != null && length(v.name) > 0 }
}
output "efs_file_systems_number_of_mount_targets" {
  description = "Map of number_of_mount_targets values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.number_of_mount_targets if v.number_of_mount_targets != null }
}
output "efs_file_systems_owner_id" {
  description = "Map of owner_id values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "efs_file_systems_performance_mode" {
  description = "Map of performance_mode values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.performance_mode if v.performance_mode != null && length(v.performance_mode) > 0 }
}
output "efs_file_systems_protection" {
  description = "Map of protection values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => one(v.protection) if v.protection != null && length(v.protection) > 0 }
}
output "efs_file_systems_provisioned_throughput_in_mibps" {
  description = "Map of provisioned_throughput_in_mibps values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.provisioned_throughput_in_mibps if v.provisioned_throughput_in_mibps != null }
}
output "efs_file_systems_region" {
  description = "Map of region values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.region if v.region != null && length(v.region) > 0 }
}
output "efs_file_systems_size_in_bytes" {
  description = "Map of size_in_bytes values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.size_in_bytes if v.size_in_bytes != null && length(v.size_in_bytes) > 0 }
}
output "efs_file_systems_tags" {
  description = "Map of tags values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "efs_file_systems_tags_all" {
  description = "Map of tags_all values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "efs_file_systems_throughput_mode" {
  description = "Map of throughput_mode values across all efs_file_systems, keyed the same as var.efs_file_systems"
  value       = { for k, v in aws_efs_file_system.efs_file_systems : k => v.throughput_mode if v.throughput_mode != null && length(v.throughput_mode) > 0 }
}

