resource "iosxr_router_isis" "GLB-ISIS" {
  process_id = "1" 
}

resource "iosxr_router_isis_address_family" "GLB-ISIS-AF" {
    process_id = "1"
    af_name = "ipv4"
    saf_name = "unicast"
    segment_routing_mpls_sr_prefer = true
}
resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-AF-Gi1"{
    process_id = "1"
    interface_name = "GigabitEthernet0/0/0/1"
    af_name = "ipv4"
    saf_name = "unicast"
}
resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-AF-Gi2"{
    process_id = "1"
    interface_name = "GigabitEthernet0/0/0/2"
    af_name = "ipv4"
    saf_name = "unicast"
}