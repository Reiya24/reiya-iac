###########################################
#SUBNET
###########################################

resource "oci_core_internet_gateway" "this" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = var.vcn_id
    #Optional
    enabled = var.internet_gateway_enabled
    display_name = var.internet_gateway_display_name

    route_table_id = var.route_table_id
    

}