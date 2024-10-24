###########################################
#VCN
###########################################

resource "oci_core_vcn" "this" {

  compartment_id = var.compartment_id
  cidr_blocks    = var.cidr_blocks
  display_name = var.display_name

  dns_label = var.vcn_dns_label == "" ? null : var.vcn_dns_label
}
