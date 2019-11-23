resource "google_storage_bucket" "my_bucket" {
  name     = "${var.project_id}-bucket"
  location = var.region
}
