# Read Google Cloud Compoute(GCP) billing account id.
data "google_billing_account" "account" {
  display_name = "My Billing Account"
  open         = true
}

# Generate a random string to append to resource names.
resource "random_string" "random" {
  length  = 6
  upper   = false
  special = false
}

# Creates a GCP Project.
resource "google_project" "demo_project" {
  name            = var.project_name
  project_id      = "${var.project_name}-${random_string.random.result}"
  billing_account = data.google_billing_account.account.id
  labels          = var.labels
}

# Enable services in newly created GCP Project.
resource "google_project_service" "gcp_services" {
  count   = length(var.gcp_service_list)
  project = google_project.demo_project.project_id
  service = var.gcp_service_list[count.index]

  disable_dependent_services = true
}

# Creates a GCS bucket to store tfstate.
resource "google_storage_bucket" "tfstate" {
  name     = "${google_project.demo_project.project_id}-tfstate"
  location = var.region
  project  = google_project.demo_project.project_id
}
