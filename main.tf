resource "google_compute_instance" "jenkins-node" {
  name         = "jenkins-node"
  machine_type = "f1-micro"
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
