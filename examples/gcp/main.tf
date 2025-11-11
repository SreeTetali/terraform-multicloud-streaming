module "streaming" {
  source         = "../.."
  cloud_provider = "gcp"
  stream_name    = "example-gcp-topic"
}
