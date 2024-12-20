###########################################
#ROUTE TABLE
###########################################

resource "oci_core_route_table" "this" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = var.vcn_id

    
    #Optional
    display_name = var.route_table_display_name

    dynamic "route_rules" {
      for_each = var.route_rules
      
      content {
        #Required
      destination      = route_rules.value.destination
      destination_type = route_rules.value.destination_type
      network_entity_id = route_rules.value.network_entity_id
    }

    }
}