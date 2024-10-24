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
  type = string
}

# vcn
variable "compartment_id" {
  type = string
}

variable "cidr_blocks" {
  type = list(string)
}

variable "display_name" {
  type = string
}

variable "vcn_dns_label" {
  type = string
  default = ""
}