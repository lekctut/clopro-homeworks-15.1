###cloud vars
variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vpc_name" {
  type        = string
  default     = "vpc-test"
  description = "Name for VPC network"
}

variable "name_public_subnet" {
  type        = string
  default     = "public-subnet-test"
  description = "Name for public subnet"
}

variable "name_private_subnet" {
  type        = string
  default     = "private-subnet-test"
  description = "Name for private subnet"
}

variable "default_cidr_for_public" {
  type        = list(string)
  default     = ["192.168.10.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "default_cidr_for_private" {
  type        = list(string)
  default     = ["192.168.20.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}


### yandex_compute_image

variable "vm_yandex_compute_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}

### yandex_compute_instance

variable "name-public-vm" {
  type        = string
  default     = "test-vm-public"
}

variable "name-private-vm" {
  type        = string
  default     = "test-vm-private"
}



variable "scheduling-policy" {
  type        = bool
  default     = true
}

variable "resources-for-nat-instance"{
    type = object({ cores = number, memory = number, core_fraction = number })
    default = {cores = 2, memory = 2, core_fraction = 20}
    }

variable "resources-test-instance"{
    type = object({ cores = number, memory = number, core_fraction = number })
    default = {cores = 2, memory = 2, core_fraction = 20}
    }

variable "vm-ssh-metadata"{
    type = string
    default = "ubuntu:ssh-key"
}

variable "platform-id"{
    type = string
    default = "standard-v1"
}

variable "ip-nat-instance"{
    type = string
    default = "192.168.10.254"
}
