# Set google provider with project name.
provider "google" {
  project = "my-project-name" # Update: unique project id.
  region  = "europe-west2"
}

# Creates a GCS bucket.
resource "google_storage_bucket" "my_bucket" {
  name     = "my-gcs-bucket" # Update: Unique bucket name
  location = "europe-west2"
}
