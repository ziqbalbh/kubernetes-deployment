variable "pm_api_url" {
  default = "https://10.161.1.5:8006/api2/json"
}

variable "pm_node" {
  default = "pve2"
}

variable "pm_user" {
  default = "root@pam"
}

variable "pm_password" {
  default = "Snaji2211"
}

variable "ssh_key_file" {
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC2buU+SVNE0ky0XHB4ByZIDLTU3pezeF6o6nhnw1UmAgmpvuFp7bhf/tlVlLirVBfG7a0wfLXOs5DOvHLp/bDjA3UA+g9dvgL0DjGcH0SpFAVLofUQUS3UcO/qiNM1JpSVX2oG2wTZ2Kwi6HqHQTCNJku8bxe1I31u2Ohi/Gwrr0OJUVjCNCwn7NAPYOtKtbG6SPwvu/Wdy/INOtSE0VoWWaZb4TwHxc9TFR6w9lfAOrXpW0cPXcwqKoU34Wm0qacI/AYSWyK54/4CSTJrwB9FljRaLDc7I7BWx69ekrdjZJ7zxUmkcy1qksuyCTLiN6fYRYNAanwnXuWQYFUGD9nOso77hz3K0ficRSlsefZYnq4jnTW7ILkB8AtVyUnEDmxPVXBxc/U+Wgg1t9VdBKOcC7DZcU2WyuMjHHtqrAAZGm65iqWx8VG61DZET5kZ4iXvUOm1MWku9iOeaH3SeFoCmbxK8LjSaUkkMWiF+cIGHktTfV09Ciqk8qpDaaGyhq0= bahaaalamood@Bahaas-MacBook-Pro.local"
}
variable "proxmox_host" {
    default = "pve2"
}
variable "template_name" {
    default = "ubuntu-2204-cloudinit-temp-700"
}

variable "instance_count"{
    default = 3
}

variable "instance_prefix"{
    default = "kube-vm"
}

variable "disk_size"{
    default = "100G"
}

variable "disk_type" {
    default = "scsi"
}
variable "storage" {
   default = "c1"
}

variable "cores" {
  default = 4
}

variable "memory" {
  default = 16384
}

variable "bridge" {
  default = "vmbr1"
}