resource "proxmox_vm_qemu" "control_plane" {
  count             = 1
  name              = "control-plane-${count.index}.proxmox.arcdsc.com"
  target_node       = "${var.pm_node}"
  vmid = tonumber("700"+"${count.index}")+ 1

  clone             = var.template_name
  full_clone        = false

  os_type           = "cloud-init"
  cores             = 4
  sockets           = "1"
  cpu               = "host"
  memory            = 4096
  scsihw            = "virtio-scsi-single"
  bootdisk          = "scsi0"
  pool              = "C1"

  disk {
    size = var.disk_size
    type = var.disk_type
    storage = var.storage
    iothread = 1
  }
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  network {
    model           = "virtio"
    bridge          = var.bridge
  }

  # cloud-init settings
  # adjust the ip and gateway addresses as needed
  ipconfig0         = "ip=10.10.10.3${count.index}/24,gw=10.10.10.1"
  sshkeys = file("${var.ssh_key_file}")
}

resource "proxmox_vm_qemu" "worker_nodes" {
  count             = 3
  name              = "worker-${count.index}.proxmox.arcdsc.com"
  target_node       = "${var.pm_node}"
  vmid = tonumber("750"+"${count.index}")+ 1

  clone             = var.template_name
  full_clone        = false
  os_type           = "cloud-init"
  cores             = 4
  sockets           = "1"
  cpu               = "host"
  memory            = var.memory
  scsihw            = "virtio-scsi-single"
  bootdisk          = "scsi0"
  pool              = "C1"

  disk {
    size = var.disk_size
    type = var.disk_type
    storage = var.storage
    iothread = 1
  }
  
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  network {
    model           = "virtio"
    bridge          = var.bridge
  }

  # cloud-init settings
  # adjust the ip and gateway addresses as needed
  ipconfig0         = "ip=10.10.10.4${count.index}/24,gw=10.10.10.1"
  sshkeys = file("${var.ssh_key_file}")
}
