resource "iosxr_router_isis" "GLB-ISIS" {
  process_id = "1" 
}

resource "iosxr_router_isis_address_family" "GLB-AF" {
    process_id = "1"
    af_name = "ipv4"
    saf_name = "unicast"
    segment_routing_mpls_sr_prefer = true
}