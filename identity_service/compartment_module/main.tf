resource "oci_identity_compartment" "my_compartment" {
  compartment_id = var.compartment_parent_id
  name           = var.compartment_name
  description    = var.compartment_description
  enable_delete  = true
}