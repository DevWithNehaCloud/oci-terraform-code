module "uat_instance_creation" {
source = "/home/ngsoftlook/compute_service/instance_module"
env_Swiggy_Finance="uat"
env_display_name="uat_instance"
env_memory_in_gbs="32"
env_ocpus="2"
env_boot_volume_size=100

}