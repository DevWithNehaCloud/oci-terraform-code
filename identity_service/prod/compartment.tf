module "prod_comp" {
  source = "../compartment_module"

  parent_compartment_id = var.tenancy_id
  comp_name             = "prod_Compartment"
  comp_description      = "This compartment is for production environment resources"
}

output "prod_compartment_ocid" {
  value = module.prod_comp.created_compartment_id
}