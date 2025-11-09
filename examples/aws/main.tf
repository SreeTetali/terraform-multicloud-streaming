module "streaming" {
  source         = "../.."
  cloud_provider = "aws"
  stream_name    = "example-aws-stream"
}
