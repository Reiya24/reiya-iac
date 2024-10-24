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

#subnet
variable "subnet_cidr_block" {
  sensitive = true
  type = string
  default = "10.0.1.0/32"
}
