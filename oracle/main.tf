###
# TODO: refactor variable name
# kodingan saat ini route tablenya duplicate
###

module "reiya-vcn" {
  source = "../modules/vcn"

  
  compartment_id = var.compartment_id
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region

  display_name = "reiya-vcn"
  cidr_blocks = ["10.0.0.0/16"]

  vcn_dns_label = "reiya"

}


module "reiya-subnet-public-1" {
  source = "../modules/subnet"

  compartment_id = var.compartment_id
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region


  display_name = "reiya-subnet-public-1"
  
  cidr_block = "10.0.1.0/24"
  prohibit_public_ip_on_vnic = false

  subnet_dns_label = "public1"

  

  vcn_id = module.reiya-vcn.vcn_id
}

module "reiya-subnet-private-1" {
  source = "../modules/subnet"

  compartment_id = var.compartment_id
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region


  display_name = "reiya-subnet-private-1"
  
  cidr_block = "10.0.2.0/24"
  prohibit_public_ip_on_vnic = true

  subnet_dns_label = "private1"

  vcn_id = module.reiya-vcn.vcn_id
}


module "reiya-igw" {
  source = "../modules/internet-gateway"

  compartment_id = var.compartment_id
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region

  vcn_id = module.reiya-vcn.vcn_id
  route_table_id = module.reiya-vcn.route_table_id


  internet_gateway_enabled = true
  internet_gateway_display_name = "reiya-igw"


}

module "reiya-route-table" {
  source = "../modules/route-table"

  compartment_id = var.compartment_id
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region

  route_table_display_name = "reiya-rt"

  vcn_id = module.reiya-vcn.vcn_id

  route_rules = [
    {
      destination = "0.0.0.0/16"
      destination_type = "CIDR_BLOCK"
      network_entity_id = module.reiya-igw.igw_id
    }
  ]


}