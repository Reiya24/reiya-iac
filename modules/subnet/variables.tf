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

# vcn
variable "compartment_id" {
  sensitive = true
  type = string
}

variable "cidr_block" {
  sensitive = true
  type = string
}

variable "display_name" {
  sensitive = true
  type = string
}

variable "vcn_id" {
  sensitive = true
  type = string
}

# subnet
variable "prohibit_public_ip_on_vnic" {
  sensitive = true
  type = bool
}

variable "subnet_dns_label" {
  type = string
  default = ""
}

