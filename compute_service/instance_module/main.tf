
resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "WebLogic Management Service"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Java Management Service"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "OS Management Hub Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Fleet Application Management Service"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute RDMA GPU Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Auto-Configuration"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Authentication"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Cloud Guard Workload Protection"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "WGLS:US-ASHBURN-AD-1"
	compartment_id = "ocid1.compartment.oc1..aaaaaaaazkdnpfbtt6jnwus6scgnxjlivr5kyxqrrwkmawbz4h2af72655qq"
	create_vnic_details {
		assign_ipv6ip = "false"
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.iad.aaaaaaaajgzhp7sda4b5coysxcq4tfn7rxpxe6puml57q6fx5exk7ctdbpva"
	}
	defined_tags = {
		"Swiggy-Finance.env" = var.env_Swiggy_Finance
	}
	display_name = var.env_display_name
	instance_options {
		are_legacy_imds_endpoints_disabled = "true"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDeHaRhieuXlo8Z0qVhPnP9fIS/ZG5caHYvnPaGhF/PikqYHjAWZ3fGcoqDbLUQefWm/2jAxkOIGGDaiSqR1ROMEwi+/vfQ2urAPlfxIYbqknQO6KlzmUzxkc6kmWo+zelXC2bTVUUwOe4Zo8JzChynM6fEeDU6sDv5ZqcuDnF3L1mLBx5++mKzOFP+OG4UYl//YrOu8XOXGeNCtSoEPsnux+YycsCTTJGbo68vIRgDdLMIsBMnqfMYXJLLfOcTs/FwmEwSfqh7wE3pKFPWWNDSi9NPcSmU1TjNtR50WjuX7wPU6Xb/a+UayA6bOe2CHaqrZxwVO1j8O4i+TkYxOHav ssh-key-2026-04-23"
	}
	platform_config {
		is_symmetric_multi_threading_enabled = "true"
		type = "AMD_VM"
	}
	shape = var.env_shape
	shape_config {
		memory_in_gbs = var.env_memory_in_gbs
		ocpus = var.env_ocpus
	}
	source_details {
		source_id = "ocid1.image.oc1.iad.aaaaaaaarbzgfkvrsoxcplpn3i7qcrivunqeb7cpqsdf2vcrtmegsfg22ena"
		source_type = "image"
        boot_volume_size_in_gbs = var.env_boot_volume_size
	}
}
