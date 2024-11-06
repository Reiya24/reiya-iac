resource "oci_core_instance" "this" {
    availability_domain = var.availability_domain
    compartment_id = var.compartment_id
    
    display_name = var.display_name

    image = var.image
    shape = var.instance_shape

    shape_config {
      ocpus = 2
      memory_in_gbs = 16
    }

    source_details {
      source_id   = data.oci_core_images.images_for_shape.images[0].id
      source_type = "image"
    }
    create_vnic_details {
      subnet_id = var.subnet_id
    }

    metadata = {
      ssh_authorized_keys = "${file(var.ssh_public_key_file)}"
    }
}

variable "availability_domain" {
  type = string
}

variable "compartment_id" {
  type = string
}
  
variable "display_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "image" {
  type = string
}

variable "vcn_id" {
  sensitive = true
  type = string
}

variable "instance_shape" {
  type = string #https://docs.oracle.com/en-us/iaas/api/#/en/iaas/20160918/Shape/ListShapes
}