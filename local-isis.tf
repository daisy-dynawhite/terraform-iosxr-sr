resource "iosxr_router_isis" "GLB-ISIS-SR2" {
  process_id = "1" 
  nets = [{net_id = "49.0000.0000.0000.0002.00"}]
  provider = iosxr.SR-R2
}

resource "iosxr_router_isis_interface_address_family" "GLB-ISIS-SR2-AF-Lo0"{
    process_id = "1"
    interface_name = "Loopback0"
    af_name = "ipv4"
    saf_name = "unicast"
    provider = iosxr.SR-R2
    prefix_sid_index = "2"
}