
resource "oci_core_instance" "this" {
    availability_domain = var.availability_domain
    compartment_id = var.compartment_id
    
    display_name = var.display_name

    shape = var.instance_shape

    shape_config {
      ocpus = var.ocpus
      memory_in_gbs = var.memory

    }

    source_details {
      source_id   = var.image_id
      source_type = "image"

      boot_volume_size_in_gbs = var.boot_volumes_size
    }
    create_vnic_details {
      assign_private_dns_record = true

      subnet_id = var.subnet_id
    }

    metadata = {
      ssh_authorized_keys = "${file(var.ssh_public_key_file)}"
    }


}

