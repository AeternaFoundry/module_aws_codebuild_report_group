resource "aws_codebuild_report_group" "codebuild_report_groups" {
  for_each = var.codebuild_report_groups

  name           = each.value.name
  type           = each.value.type
  delete_reports = each.value.delete_reports
  region         = each.value.region
  tags           = each.value.tags
  tags_all       = each.value.tags_all

  export_config {
    dynamic "s3_destination" {
      for_each = each.value.export_config.s3_destination != null ? [each.value.export_config.s3_destination] : []
      content {
        bucket              = s3_destination.value.bucket
        encryption_disabled = s3_destination.value.encryption_disabled
        encryption_key      = s3_destination.value.encryption_key
        packaging           = s3_destination.value.packaging
        path                = s3_destination.value.path
      }
    }
    type = each.value.export_config.type
  }
}

