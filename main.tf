variable "cloud_provider" {
  description = "Cloud provider to deploy to (aws, azure, gcp)"
  type        = string
  default     = "aws"
}

variable "stream_name" {
  description = "Name of the stream/event hub/topic"
  type        = string
  default     = "my-stream"
}

locals {
  module_path = "./modules/${var.cloud_provider}"
}

module "streaming" {
  source      = local.module_path
  stream_name = var.stream_name
}

output "stream_id" {
  value = module.streaming.stream_id
}
