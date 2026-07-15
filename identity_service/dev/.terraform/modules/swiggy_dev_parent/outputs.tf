output "compartment_id" {
  value       = oci_identity_compartment.my_compartment.id
  description = "The OCID of the created compartment"
}