provider "google" {
  project = "my-project-id"
  region  = "us-central1"
}

variable "stream_name" {
  type = string
}

resource "google_pubsub_topic" "topic" {
  name = var.stream_name
}

resource "google_pubsub_subscription" "subscription" {
  name  = "${var.stream_name}-sub"
  topic = google_pubsub_topic.topic.name
}

output "stream_id" {
  value = google_pubsub_topic.topic.name
}
