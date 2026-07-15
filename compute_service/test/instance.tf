module "test_instance_creation" {
source = "/home/ngsoftlook/compute_service/instance_module"
env_Swiggy_Finance="test"
env_display_name="test_instance"
env_memory_in_gbs="16"
env_ocpus="2"
env_boot_volume_size=50
}