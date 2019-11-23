# Set google provider with project name.
provider "google" {
  project = "golden-manifest-258408"
  region  = "europe-west2"
}

# Creates a GCS bucket.
resource "google_storage_bucket" "my_bucket" {
  name     = "cloud-bucket-23678"
  location = "europe-west2"
}
