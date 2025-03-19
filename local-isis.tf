# IS-IS Process
    resource "iosxr_router_isis" "GLB-ISIS-SR1" {
    process_id = "1" 
    nets = [{net_id = "49.0000.0000.0000.0001.00"}]
    provider = iosxr.SR-R1
    }
    resource "iosxr_router_isis" "GLB-ISIS-SR2" {
    process_id = "1" 
    nets = [{net_id = "49.0000.0000.0000.0002.00"}]
    provider = iosxr.SR-R2
    }
    resource "iosxr_router_isis" "GLB-ISIS-SR3" {
    process_id = "1" 
    nets = [{net_id = "49.0000.0000.0000.0003.00"}]
    provider = iosxr.SR-R3
    }
    resource "iosxr_router_isis" "GLB-ISIS-SR4" {
    process_id = "1" 
    nets = [{net_id = "49.0000.0000.0000.0004.00"}]
    provider = iosxr.SR-R4
    }
    resource "iosxr_router_isis" "GLB-ISIS-RR" {
    process_id = "1" 
    nets = [{net_id = "49.0000.0000.0000.0005.00"}]
    provider = iosxr.SR-RR
    }

# IS-IS Loopbacks
    resource "iosxr_router_isis_interface" "GLB-ISIS-SR1-INT-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"    
        passive = true
        provider = iosxr.SR-R1
    }
    resource "iosxr_router_isis_interface" "GLB-ISIS-SR2-INT-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"    
        passive = true
        provider = iosxr.SR-R2
    }
    resource "iosxr_router_isis_interface" "GLB-ISIS-SR3-INT-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"    
        passive = true
        provider = iosxr.SR-R3
    }
    resource "iosxr_router_isis_interface" "GLB-ISIS-SR4-INT-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"    
        passive = true
        provider = iosxr.SR-R4
    }
    resource "iosxr_router_isis_interface" "GLB-ISIS-RR-INT-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"    
        passive = true
        provider = iosxr.SR-RR
    }

# IS-IS AF
    resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-SR1-AF-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"
        af_name = "ipv4"
        saf_name = "unicast"
        provider = iosxr.SR-R1
        prefix_sid_index = "1"
    }
    resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-SR2-AF-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"
        af_name = "ipv4"
        saf_name = "unicast"
        provider = iosxr.SR-R2
        prefix_sid_index = "2"
    }
    resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-SR3-AF-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"
        af_name = "ipv4"
        saf_name = "unicast"
        provider = iosxr.SR-R3
        prefix_sid_index = "3"
    }
    resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-SR4-AF-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"
        af_name = "ipv4"
        saf_name = "unicast"
        provider = iosxr.SR-R4
        prefix_sid_index = "4"
    }
    resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-RR-AF-Lo0"{
        process_id = "1"
        interface_name = "Loopback0"
        af_name = "ipv4"
        saf_name = "unicast"
        provider = iosxr.SR-RR
        prefix_sid_index = "5"
    }
    resource "iosxr_router_isis_interface_address_family" "ISIS-SR1-AF-Gi0"{
        process_id = "1"
        interface_name = "GigabitEthernet0/0/0/0"
        af_name = "ipv4"
        saf_name = "unicast"
        provider = iosxr.SR-R1
    }
    resource "iosxr_router_isis_interface_address_family" "ISIS-SR2-AF-Gi0"{
        process_id = "1"
        interface_name = "GigabitEthernet0/0/0/0"
        af_name = "ipv4"
        saf_name = "unicast"
        provider = iosxr.SR-R2
    }