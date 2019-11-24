resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = local.zone
  tags         = ["http-server"]
  labels       = var.labels

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = data.template_file.nginx.rendered

  service_account {
    scopes = ["cloud-platform"]
  }

  depends_on = [google_storage_bucket_object.webpage]
}


data "template_file" "nginx" {
  template = "${file("${path.module}/scripts/install_nginx.tpl")}"

  vars = {
    ufw_allow_nginx = "Nginx HTTP"
    bucket_name     = google_storage_bucket.config.name
    webpage_path    = local.webpage_path
  }
}
