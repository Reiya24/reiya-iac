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

variable "internet_gateway_enabled" {
  sensitive = true
  type = bool
}

variable "internet_gateway_display_name" {
  sensitive = true
  type = string
}

variable "vcn_id" {
  sensitive = true
  type = string
}


variable "route_table_id" {
  sensitive = true
  type = string
}
