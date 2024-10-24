output "vcn_id" {
  description = "id of vcn that is created"
  value       = oci_core_vcn.this.id
}

output "route_table_id" {
  description = "id of route table in default vpc"
  value = oci_core_vcn.this.default_route_table_id
}