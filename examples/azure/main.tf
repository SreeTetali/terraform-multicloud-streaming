module "streaming" {
  source         = "../.."
  cloud_provider = "azure"
  stream_name    = "example-azure-hub"
}
