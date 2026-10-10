variable "codebuild_report_groups" {
  description = <<EOT
Map of codebuild_report_groups, attributes below
Required:
    - name
    - type
    - export_config (block):
        - s3_destination (optional, block):
            - bucket (required)
            - encryption_disabled (optional)
            - encryption_key (required)
            - packaging (optional)
            - path (optional)
        - type (required)
Optional:
    - delete_reports
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name           = string
    type           = string
    delete_reports = optional(bool)
    region         = optional(string)
    tags           = optional(map(string))
    tags_all       = optional(map(string))
    export_config = object({
      s3_destination = optional(object({
        bucket              = string
        encryption_disabled = optional(bool)
        encryption_key      = string
        packaging           = optional(string)
        path                = optional(string)
      }))
      type = string
    })
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

