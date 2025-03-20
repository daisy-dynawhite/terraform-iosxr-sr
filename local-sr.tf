resource "iosxr_pce" "SR-PCE-RR1" {
  address_ipv4 = "5.5.5.1"
  provider = iosxr.SR-RR
}

resource "iosxr_segment_routing_te" "SR1-PCC" {
  pcc_source_address = "1.1.1.1"
  pce_peers = [ {
    pce_address = "5.5.5.1"
  } ]
  provider = iosxr.SR-R1
}

resource "iosxr_segment_routing_te" "SR4-PCC" {
  pcc_source_address = "4.4.4.1"
  pce_peers = [ {
    pce_address = "5.5.5.1"
  } ]
  provider = iosxr.SR-R4
}