resource "google_compute_instance" "jenkins-node" {
  name         = "jenkins-node"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
