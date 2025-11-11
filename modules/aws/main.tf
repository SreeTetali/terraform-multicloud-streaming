variable "stream_name" {
  type = string
  description = "Name of the Kinesis stream"
  default = "example-aws-stream"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_kinesis_stream" "this" {
  name        = var.stream_name
  shard_count = 1
}
