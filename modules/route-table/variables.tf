### provider

variable "tenancy_ocid" {
  sensitive = true
  type = string
}

variable "user_ocid" {
  sensitive = true
  type = string
}

variable "fingerprint" {
  sensitive = true
  type = string
}

variable "private_key_path" {
  sensitive = true
  type = string
}

variable "region" {
  sensitive = true
  type = string
}

### internet-gateway
variable "compartment_id" {
  sensitive = true
  type = string
}

variable "route_table_display_name" {
  sensitive = true
  type = string
}


variable "route_rules" {
  type = list(object({
    destination        = string
    destination_type   = string
    network_entity_id  = string
  }))
}

variable "vcn_id" {
  sensitive = true
  type = string
}

