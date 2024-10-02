resource "digitalocean_vpc" "vpc" {
  name     = "technical-test-divistant-vpc"
  region   = "sgp1"
  ip_range = "192.168.0.0/24"
}