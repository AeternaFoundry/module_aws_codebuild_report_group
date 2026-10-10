output "codebuild_report_groups_id" {
  description = "Map of id values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codebuild_report_groups_arn" {
  description = "Map of arn values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "codebuild_report_groups_created" {
  description = "Map of created values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.created if v.created != null && length(v.created) > 0 }
}
output "codebuild_report_groups_delete_reports" {
  description = "Map of delete_reports values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.delete_reports if v.delete_reports != null }
}
output "codebuild_report_groups_export_config" {
  description = "Map of export_config values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => one(v.export_config) if v.export_config != null && length(v.export_config) > 0 }
}
output "codebuild_report_groups_name" {
  description = "Map of name values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "codebuild_report_groups_region" {
  description = "Map of region values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codebuild_report_groups_tags" {
  description = "Map of tags values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "codebuild_report_groups_tags_all" {
  description = "Map of tags_all values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "codebuild_report_groups_type" {
  description = "Map of type values across all codebuild_report_groups, keyed the same as var.codebuild_report_groups"
  value       = { for k, v in aws_codebuild_report_group.codebuild_report_groups : k => v.type if v.type != null && length(v.type) > 0 }
}

