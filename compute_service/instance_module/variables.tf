# this file is used to define all the input variables required for provisioning the compute instance
variable "env_display_name" {
    type=string
    description = "this variable defines instance name"
  
}
variable "env_memory_in_gbs" {
    type=string
    description = "this variable defines instance memory size"
  
}
variable "env_ocpus" {
    type=string
    description = "this variable defines ocpu count"
  
}
variable "env_shape" {
    type=string
    description = "this variable defines shape"
  
}
variable "env_Swiggy_Finance" {
    type=string
    description = "this variable defines tag for environment like dev test uat prod"
  
}
variable "env_boot_volume_size" {
    type=number
    description = "this variable defines boot volume size"
  }