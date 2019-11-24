terraform {
  backend "gcs" {
    bucket = "" # Update: GCS bucket name to store terraform tfstate
    prefix = "app"
  }
}
