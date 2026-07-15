module "prod_instance_creation" {
source = "/home/ngsoftlook/compute_service/instance_module"
env_Swiggy_Finance="prod"
env_display_name="prod_instance"
env_memory_in_gbs="64"
env_ocpus="4"
env_boot_volume_size=150

}