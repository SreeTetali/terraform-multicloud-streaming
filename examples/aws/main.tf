module "streaming" {
  source      = "../../modules/aws"
  stream_name = var.stream_name
}
