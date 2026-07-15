module "uat_comp" {
  source = "../compartment_module"

  parent_compartment_id = var.tenancy_id
  comp_name             = "uat_Compartment"
  comp_description      = "This compartment is for uat environment resources"
}

output "uat_compartment_ocid" {
  value = module.uat_comp.created_compartment_id
}