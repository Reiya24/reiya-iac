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

##modules

variable "ocpus" {
  type = number
}

variable "memory" {
  type = number
}

variable "image_id" {
  type = string
}

variable "availability_domain" {
  type = string
}

variable "compartment_id" {
  type = string
}
  
variable "display_name" {
  type = string
}

variable "subnet_id" {
  type = string
}


variable "instance_shape" {
  type = string #https://docs.oracle.com/en-us/iaas/api/#/en/iaas/20160918/Shape/ListShapes
}

variable "boot_volumes_size" {
  type = number
}

variable "ssh_public_key_file" {
  type = string
}