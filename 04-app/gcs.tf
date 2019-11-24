resource "google_storage_bucket" "config" {
  name     = "${var.project_id}-configs"
  location = var.region
}

resource "google_storage_bucket_object" "webpage" {
  name   = local.webpage_path
  source = "${path.module}/files/index.html"
  bucket = google_storage_bucket.config.name
}
