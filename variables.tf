variable "cloud_provider" {
  description = "Cloud provider (aws, azure, gcp)"
  type        = string
  default     = "aws"
}

variable "stream_name" {
  description = "Name of the stream/event hub/topic"
  type        = string
  default     = "my-stream"
}
