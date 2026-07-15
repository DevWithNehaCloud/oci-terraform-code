# ==========================================================
# 1. PARENT COMPARTMENT: swiggy-dev-compartment
# ==========================================================
module "swiggy_dev_parent" {
  source = "/home/ngsoftlook/identity_service/compartment_module"

  compartment_parent_id   = "ocid1.tenancy.oc1..aaaaaaaacxrxza63ajbfdhvukzuxpv4y3oksxh256migpqx6lazpbbejuuga" # OCID of the tenancy
  compartment_name        = "swiggy-dev-compartment"
  compartment_description = "Main Parent Compartment for Dev Environment"
}

# ==========================================================
# 2. CHILD COMPARTMENT: swiggy-dev-compute-and-storage-compartment
# ==========================================================
module "swiggy_dev_compute_and_storage" {
  source = "/home/ngsoftlook/identity_service/compartment_module"

  # It will dynamically retrieve the ID from the parent module's output.
  compartment_parent_id   = module.swiggy_dev_parent.compartment_id
  
  compartment_name        = "swiggy-dev-compute-and-storage-compartment"
  compartment_description = "Child Compartment for swiggy Dev Storage Resources"
}

# ==========================================================
# 3. CHILD COMPARTMENT: swiggy-dev-network-compartment
# ==========================================================
module "swiggy_dev_network" {
  source = "../compartment_module"

  # It will also dynamically retrieve the ID from the parent module's output.
  compartment_parent_id   = module.swiggy_dev_parent.compartment_id
  
  compartment_name        = "swiggy-dev-network-compartment"
  compartment_description = "Child Compartment for swiggy Dev Network Resources"
}