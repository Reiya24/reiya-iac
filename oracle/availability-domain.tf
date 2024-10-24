# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/identity_availability_domains

# Tenancy is the root or parent to all compartments.
# For this tutorial, use the value of <tenancy-ocid> for the compartment OCID.

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_ocid
}



# The data source gets a list of availability domains in your entire tenancy. The tenancy is the compartment OCID for the root compartment. Providing a specific "<compartment-ocid>" or the "<tenancy-ocid>" outputs the same list. 