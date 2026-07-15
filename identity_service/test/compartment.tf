module "test_comp" {
  source = "../compartment_module"

  parent_compartment_id = var.tenancy_id
  comp_name             = "test_Compartment"
  comp_description      = "This compartment is for test environment resources"
}

output "test_compartment_ocid" {
  value = module.test_comp.created_compartment_id
}