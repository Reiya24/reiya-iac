###########################################
#SUBNET
###########################################

resource "oci_core_subnet" "this" {
    cidr_block = var.cidr_block
    compartment_id = var.compartment_id
    vcn_id = var.vcn_id

    display_name = var.display_name
    prohibit_public_ip_on_vnic = var.prohibit_public_ip_on_vnic
    dns_label = var.subnet_dns_label



}