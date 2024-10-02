resource "digitalocean_droplet" "reverse_proxy" {
  image  = "ubuntu-24-04-x64"
  name   = "reverse-proxy"
  region = "sgp1"
  size   = "s-1vcpu-512mb-10gb"
  ssh_keys = [43571840]
  vpc_uuid = digitalocean_vpc.vpc.id
}

resource "digitalocean_droplet" "app_server" {
  image  = "ubuntu-24-04-x64"
  name   = "app-server"
  region = "sgp1"
  size   = "s-1vcpu-512mb-10gb"
  ssh_keys = [43571840]
  vpc_uuid = digitalocean_vpc.vpc.id
}

resource "digitalocean_droplet" "db_server" {
  image  = "ubuntu-24-04-x64"
  name   = "db-server"
  region = "sgp1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [43571840]
  vpc_uuid = digitalocean_vpc.vpc.id
}