# Network
#resource "yandex_vpc_network" "default" {
#  name = "net02"
#}

resource "yandex_vpc_subnet" "default" {
  name = "subnet_102"
  zone           = "ru-central1-a"
  network_id     = "enpiib89to3i2kpb9de2"
  v4_cidr_blocks = ["192.168.102.0/24"]
}
