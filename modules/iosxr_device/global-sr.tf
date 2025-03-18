resource "iosxr_segment_routing" "GLB-SR" {
  global_block_lower_bound = 16000
  global_block_upper_bound = 29999
  local_block_lower_bound  = 15000
  local_block_upper_bound  = 15999
}

resource "iosxr_router_isis_address_family" "GLB-SR-AF" {
  process_id              = "1"
  af_name                 = "ipv4"
  saf_name                = "unicast"
  metric_style_wide       = true
}