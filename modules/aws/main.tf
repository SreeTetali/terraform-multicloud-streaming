provider "aws" {
  region = "us-east-1"
}

variable "stream_name" {
  type = string
}

resource "aws_kinesis_stream" "stream" {
  name             = var.stream_name
  shard_count      = 1
  retention_period = 24
  stream_mode_details {
    stream_mode = "ON_DEMAND"
  }
}

output "stream_id" {
  value = aws_kinesis_stream.stream.arn
}
