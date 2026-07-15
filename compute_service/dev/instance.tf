module "dev_instance_creation" {
source = "/home/ngsoftlook/compute_service/instance_module"
for_each           =        var.instance_map
# Pass data dynamically using each.value
env_display_name   =        each.value.dev_display_name
env_memory_in_gbs  =        each.value.dev_memory_in_gbs
env_ocpus          =        each.value.dev_ocpus
env_shape=                  each.value.dev_shape
env_Swiggy_Finance  =       each.value.dev_Swiggy_Finance
env_boot_volume_size =      each.value.dev_boot_volume_size
}