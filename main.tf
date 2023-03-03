resource "google_compute_instance" "jenkins-node" {
  name = "jenkins-node"
  machine_type = "f1-micro"
  boot_disk {
      initialize_params {
        image = "Ubuntu/Ubuntu 18.04"
      }
    }    
    network_interface {       
      network = "default"
      access_config {
      }
    }
  }