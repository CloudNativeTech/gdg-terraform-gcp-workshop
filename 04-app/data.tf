data "google_compute_image" "debian" {
  family  = "ubuntu-1804-lts"
  project = "gce-uefi-images"
}
