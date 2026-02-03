resource "yandex_vpc_network" "vpc_network" {
    name = var.vpc_name
}

resource "yandex_vpc_subnet" "public_subnet" {
  name           = var.name_public_subnet
  folder_id      = var.folder_id
  zone           = var.default_zone
  network_id     = yandex_vpc_network.vpc_network.id
  v4_cidr_blocks = var.default_cidr_for_public
}

resource "yandex_vpc_subnet" "private_subnet" {
  name           = var.name_private_subnet
  folder_id      = var.folder_id
  zone           = var.default_zone
  network_id     = yandex_vpc_network.vpc_network.id
  route_table_id = yandex_vpc_route_table.nat-route-table.id
  v4_cidr_blocks = var.default_cidr_for_private
}

resource "yandex_vpc_route_table" "nat-route-table" {
  network_id = yandex_vpc_network.vpc_network.id
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = var.ip-nat-instance
  }
}